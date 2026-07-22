# frozen_string_literal: true

require "json"
require "nokogiri"
require "open3"
require "time"
require "tmpdir"
require "tzinfo"
require "uri"

ROOT = File.expand_path("..", __dir__)
ORIGIN = "https://www.civictechdc.org"
HOST = URI(ORIGIN).host
SITE_TITLE = "Civic Tech DC"
SITE_TIMEZONE = TZInfo::Timezone.get("America/New_York")
HOSTED_EVENT_PATH = %r{\A/events/[^/]+/\z}
ARTICLE_PATH = %r{\A/blog/\d{4}/\d{2}/\d{2}/}
MAX_TITLE_LENGTH = 65
MAX_DESCRIPTION_LENGTH = 160
IMAGE_TYPES = {
  ".gif" => "image/gif",
  ".jpeg" => "image/jpeg",
  ".jpg" => "image/jpeg",
  ".png" => "image/png",
  ".svg" => "image/svg+xml",
  ".webp" => "image/webp"
}.freeze

def add_error(errors, file, message)
  errors << "#{file}: #{message}"
end

def one_value(document, selector, attribute, file, errors)
  nodes = document.css(selector)
  add_error(errors, file, "expected one #{selector}, found #{nodes.length}") unless nodes.length == 1
  return if nodes.empty?

  value = attribute ? nodes.first[attribute] : nodes.first.text
  value = value.to_s.strip
  add_error(errors, file, "#{selector} is empty") if value.empty?
  value
end

def preferred_url?(value)
  uri = URI.parse(value)
  uri.scheme == "https" && uri.host == HOST && uri.port == 443 && uri.userinfo.nil? && uri.query.nil? && uri.fragment.nil?
rescue URI::InvalidURIError
  false
end

def secure_absolute_url?(value)
  uri = URI.parse(value)
  uri.scheme == "https" && !uri.host.to_s.empty? && uri.userinfo.nil?
rescue URI::InvalidURIError
  false
end

def refresh_target(refresh)
  match = refresh["content"].to_s.match(/\A\s*\d+(?:\.\d+)?\s*;\s*url=(.+?)\s*\z/i)
  match&.[](1)
end

def correct_site_offset?(time)
  SITE_TIMEZONE.period_for_utc(time.getutc).observed_utc_offset == time.utc_offset
end

def expected_page_path(relative)
  return "/" if relative == "index.html"
  return "/#{relative.delete_suffix('index.html')}" if relative.end_with?("/index.html")

  "/#{relative}"
end

def graph_nodes(document, file, errors)
  scripts = document.css('script[type="application/ld+json"]')
  add_error(errors, file, "expected one JSON-LD block, found #{scripts.length}") unless scripts.length == 1
  return [] if scripts.empty?

  parsed = JSON.parse(scripts.first.text)
  graph = parsed["@graph"]
  unless parsed["@context"] == "https://schema.org" && graph.is_a?(Array)
    add_error(errors, file, "JSON-LD must contain a schema.org @graph")
    return []
  end
  graph
rescue JSON::ParserError => error
  add_error(errors, file, "invalid JSON-LD: #{error.message}")
  []
end

def nodes_of_type(graph, type)
  graph.select do |node|
    Array(node["@type"]).include?(type)
  end
end

errors = []
cname = File.read(File.join(ROOT, "CNAME")).strip
add_error(errors, "CNAME", "must match the canonical host #{HOST}") unless cname == HOST

Dir.mktmpdir("civictechdc-seo-") do |destination|
  output, status = Open3.capture2e(
    { "JEKYLL_ENV" => "production" },
    "bundle",
    "exec",
    "jekyll",
    "build",
    "--destination",
    destination,
    :chdir => ROOT
  )

  abort "Jekyll build failed:\n#{output}" unless status.success?

  indexable = []
  redirects = []
  noindex = []
  html_files = Dir.glob(File.join(destination, "**", "*.html")).sort

  html_files.each do |path|
    relative = path.delete_prefix("#{destination}/")
    document = Nokogiri::HTML(File.read(path))
    refresh = document.at_css('meta[http-equiv="refresh"]')

    if refresh
      robots = document.at_css('meta[name="robots"]')&.[]("content").to_s
      canonical = document.at_css('link[rel="canonical"]')&.[]("href").to_s
      target = refresh_target(refresh)
      add_error(errors, relative, "redirect must be noindex") unless robots.include?("noindex")
      add_error(errors, relative, "redirect must have a secure absolute canonical target") unless secure_absolute_url?(canonical)
      add_error(errors, relative, "redirect refresh target must equal canonical") unless target == canonical
      add_error(errors, relative, "redirect target must not use the bare site domain") if canonical.start_with?("https://civictechdc.org")
      redirects << relative
      next
    end

    html_lang = one_value(document, "html", "lang", relative, errors)
    charset = one_value(document, "meta[charset]", "charset", relative, errors)
    viewport = one_value(document, 'meta[name="viewport"]', "content", relative, errors)
    title = one_value(document, "title", nil, relative, errors)
    one_value(document, "h1", nil, relative, errors)
    description = one_value(document, 'meta[name="description"]', "content", relative, errors)
    author = one_value(document, 'meta[name="author"]', "content", relative, errors)
    robots = one_value(document, 'meta[name="robots"]', "content", relative, errors)
    canonical = one_value(document, 'link[rel="canonical"]', "href", relative, errors)
    feed_url = one_value(document, 'link[rel="alternate"][type="application/atom+xml"]', "href", relative, errors)
    favicon_url = one_value(document, 'link[rel="icon"]', "href", relative, errors)
    og_locale = one_value(document, 'meta[property="og:locale"]', "content", relative, errors)
    og_site_name = one_value(document, 'meta[property="og:site_name"]', "content", relative, errors)
    og_title = one_value(document, 'meta[property="og:title"]', "content", relative, errors)
    og_description = one_value(document, 'meta[property="og:description"]', "content", relative, errors)
    og_url = one_value(document, 'meta[property="og:url"]', "content", relative, errors)
    og_type = one_value(document, 'meta[property="og:type"]', "content", relative, errors)
    og_image = one_value(document, 'meta[property="og:image"]', "content", relative, errors)
    og_secure_image = one_value(document, 'meta[property="og:image:secure_url"]', "content", relative, errors)
    og_image_type = one_value(document, 'meta[property="og:image:type"]', "content", relative, errors)
    og_image_alt = one_value(document, 'meta[property="og:image:alt"]', "content", relative, errors)
    twitter_card = one_value(document, 'meta[name="twitter:card"]', "content", relative, errors)
    twitter_title = one_value(document, 'meta[name="twitter:title"]', "content", relative, errors)
    twitter_description = one_value(document, 'meta[name="twitter:description"]', "content", relative, errors)
    twitter_url = one_value(document, 'meta[name="twitter:url"]', "content", relative, errors)
    twitter_image = one_value(document, 'meta[name="twitter:image"]', "content", relative, errors)
    twitter_image_alt = one_value(document, 'meta[name="twitter:image:alt"]', "content", relative, errors)

    add_error(errors, relative, "HTML language must be en-US") unless html_lang == "en-US"
    add_error(errors, relative, "character encoding must be UTF-8") unless charset.to_s.downcase == "utf-8"
    add_error(errors, relative, "viewport metadata is incorrect") unless viewport == "width=device-width, initial-scale=1"
    add_error(errors, relative, "author metadata is empty") if author.to_s.empty?
    add_error(errors, relative, "favicon path is incorrect") unless favicon_url == "/assets/img/favicons/civic-tech-dc.ico"
    unless File.file?(File.join(destination, favicon_url.to_s.delete_prefix("/")))
      add_error(errors, relative, "favicon file does not exist")
    end
    add_error(errors, relative, "title exceeds #{MAX_TITLE_LENGTH} characters") if title.to_s.length > MAX_TITLE_LENGTH
    if description.to_s.length > MAX_DESCRIPTION_LENGTH
      add_error(errors, relative, "description exceeds #{MAX_DESCRIPTION_LENGTH} characters")
    end
    if og_image_alt.to_s.length > MAX_DESCRIPTION_LENGTH
      add_error(errors, relative, "social image alt exceeds #{MAX_DESCRIPTION_LENGTH} characters")
    end
    add_error(errors, relative, "canonical must use #{ORIGIN}") unless preferred_url?(canonical.to_s)
    page_url = preferred_url?(canonical.to_s) ? URI.parse(canonical).path : ""
    add_error(errors, relative, "canonical path does not match the rendered route") unless page_url == expected_page_path(relative)
    expected_title = page_url == "/" ? SITE_TITLE : " | #{SITE_TITLE}"
    title_matches = page_url == "/" ? title == expected_title : title.to_s.end_with?(expected_title)
    add_error(errors, relative, "title does not use the canonical site branding") unless title_matches
    add_error(errors, relative, "homepage Open Graph title must not duplicate the brand") if page_url == "/" && og_title != SITE_TITLE
    add_error(errors, relative, "feed link must use the canonical origin") unless feed_url == "#{ORIGIN}/feed.xml"
    add_error(errors, relative, "Open Graph locale must be en_US") unless og_locale == "en_US"
    add_error(errors, relative, "Open Graph site name must be #{SITE_TITLE}") unless og_site_name == SITE_TITLE
    add_error(errors, relative, "Open Graph URL must equal canonical") unless og_url == canonical
    add_error(errors, relative, "Twitter URL must equal canonical") unless twitter_url == canonical
    add_error(errors, relative, "Open Graph description must equal meta description") unless og_description == description
    add_error(errors, relative, "Twitter description must equal meta description") unless twitter_description == description
    add_error(errors, relative, "Open Graph and Twitter titles must match") unless og_title == twitter_title
    add_error(errors, relative, "Open Graph image must use #{ORIGIN}") unless preferred_url?(og_image.to_s)
    add_error(errors, relative, "Open Graph secure image must equal the primary image") unless og_secure_image == og_image
    add_error(errors, relative, "Twitter image must equal Open Graph image") unless twitter_image == og_image
    add_error(errors, relative, "Twitter image alt must equal Open Graph image alt") unless twitter_image_alt == og_image_alt
    add_error(errors, relative, "Twitter card must be summary_large_image") unless twitter_card == "summary_large_image"
    add_error(errors, relative, "legacy twitter:image:src must not be emitted") if document.at_css('meta[name="twitter:image:src"]')
    add_error(errors, relative, "twitter:site must be omitted without a verified handle") if document.at_css('meta[name="twitter:site"]')
    if document.at_css('meta[name="twitter:creator"]')
      add_error(errors, relative, "twitter:creator must be omitted without a verified handle")
    end
    add_error(errors, relative, "stale /about-us/ metadata remains") if document.to_html.include?("/about-us/")
    add_error(errors, relative, "bare-domain internal URL remains") if document.to_html.include?("https://civictechdc.org")

    if preferred_url?(og_image.to_s)
      image_uri_path = URI.parse(og_image).path
      image_path = image_uri_path.sub(%r{\A/}, "")
      add_error(errors, relative, "social image does not exist: #{image_path}") unless File.file?(File.join(destination, image_path))
      expected_image_type = IMAGE_TYPES[File.extname(image_uri_path).downcase]
      add_error(errors, relative, "Open Graph image type does not match its extension") unless og_image_type == expected_image_type
    end

    article = page_url.match?(ARTICLE_PATH)
    expected_type = article ? "article" : "website"
    add_error(errors, relative, "expected og:type #{expected_type}, found #{og_type.inspect}") unless og_type == expected_type

    published_nodes = document.css('meta[property="article:published_time"]')
    if article
      add_error(errors, relative, "article needs one published time") unless published_nodes.length == 1
    elsif published_nodes.any?
      add_error(errors, relative, "non-article must not emit article metadata")
    end

    row = {
      :relative => relative,
      :title => title,
      :description => description,
      :canonical => canonical,
      :og_title => og_title,
      :page_url => page_url
    }

    if robots.to_s.include?("noindex")
      add_error(errors, relative, "noindex page must still allow link following") unless robots.to_s.include?("follow")
      add_error(errors, relative, "noindex page must not emit JSON-LD") if document.at_css('script[type="application/ld+json"]')
      noindex << row
      next
    end

    unless robots.to_s.include?("index") && robots.to_s.include?("follow")
      add_error(errors, relative, "indexable page must declare index, follow")
    end
    graph = graph_nodes(document, relative, errors)
    organizations = nodes_of_type(graph, "Organization")
    websites = nodes_of_type(graph, "WebSite")
    add_error(errors, relative, "missing Organization entity") unless organizations.length == 1
    add_error(errors, relative, "missing WebSite entity") unless websites.length == 1
    if organizations.one?
      organization = organizations.first
      add_error(errors, relative, "Organization name is incorrect") unless organization["name"] == SITE_TITLE
      add_error(errors, relative, "Organization URL must use the canonical homepage") unless organization["url"] == "#{ORIGIN}/"
      unless organization["@id"] == "#{ORIGIN}/#organization"
        add_error(errors, relative, "Organization needs a stable canonical identifier")
      end
      logo_url = organization.dig("logo", "url").to_s
      add_error(errors, relative, "Organization logo URL is not canonical") unless preferred_url?(logo_url)
      if preferred_url?(logo_url)
        logo_path = URI.parse(logo_url).path.delete_prefix("/")
        add_error(errors, relative, "Organization logo file does not exist") unless File.file?(File.join(destination, logo_path))
      end
      add_error(errors, relative, "Organization needs public identity links") unless Array(organization["sameAs"]).length >= 3
    end
    if websites.one?
      website = websites.first
      add_error(errors, relative, "WebSite name is incorrect") unless website["name"] == SITE_TITLE
      add_error(errors, relative, "WebSite URL must use the canonical homepage") unless website["url"] == "#{ORIGIN}/"
      add_error(errors, relative, "WebSite needs a stable canonical identifier") unless website["@id"] == "#{ORIGIN}/#website"
    end
    page_entities = %w[WebPage AboutPage CollectionPage].flat_map { |type| nodes_of_type(graph, type) }
    add_error(errors, relative, "expected one page entity, found #{page_entities.length}") unless page_entities.length == 1
    if page_entities.one?
      page_entity = page_entities.first
      add_error(errors, relative, "page entity URL must equal canonical") unless page_entity["url"] == canonical
      add_error(errors, relative, "page entity needs a canonical identifier") unless page_entity["@id"] == "#{canonical}#webpage"
      add_error(errors, relative, "page entity title must equal Open Graph title") unless page_entity["name"] == og_title
      add_error(errors, relative, "page entity description must equal meta description") unless page_entity["description"] == description
      unless page_entity.dig("primaryImageOfPage", "url") == og_image
        add_error(errors, relative, "page entity image must equal the social image")
      end
    end

    if page_url == "/"
      add_error(errors, relative, "homepage must not emit breadcrumbs") if nodes_of_type(graph, "BreadcrumbList").any?
    else
      breadcrumbs = nodes_of_type(graph, "BreadcrumbList")
      add_error(errors, relative, "non-homepage needs one breadcrumb list") unless breadcrumbs.length == 1
      if breadcrumbs.one?
        items = breadcrumbs.first["itemListElement"]
        positions = Array(items).map { |item| item["position"] }
        add_error(errors, relative, "breadcrumb positions must be contiguous") unless positions == (1..positions.length).to_a
        add_error(errors, relative, "last breadcrumb must use the canonical URL") unless Array(items).last&.[]("item") == canonical
      end
    end

    postings = nodes_of_type(graph, "BlogPosting")
    if article
      add_error(errors, relative, "article needs one BlogPosting entity") unless postings.length == 1
      if postings.one?
        %w[headline description image datePublished author publisher mainEntityOfPage].each do |property|
          add_error(errors, relative, "BlogPosting is missing #{property}") if postings.first[property].nil?
        end
        add_error(errors, relative, "BlogPosting URL must equal canonical") unless postings.first["url"] == canonical
        add_error(errors, relative, "BlogPosting image must equal the social image") unless Array(postings.first["image"]).first == og_image
        published_value = postings.first["datePublished"].to_s
        unless published_nodes.first&.[]("content") == published_value
          add_error(errors, relative, "Open Graph and BlogPosting dates must match")
        end
        begin
          published_time = Time.iso8601(published_value)
          unless correct_site_offset?(published_time)
            add_error(errors, relative, "published date uses the wrong America/New_York UTC offset")
          end
        rescue ArgumentError
          add_error(errors, relative, "published date must be an ISO 8601 value")
        end
      end
    elsif postings.any?
      add_error(errors, relative, "non-article must not emit BlogPosting")
    end

    events = nodes_of_type(graph, "Event")
    if page_url.match?(HOSTED_EVENT_PATH)
      add_error(errors, relative, "hosted event needs one Event entity") unless events.length == 1
      if events.one?
        event = events.first
        %w[name description image startDate endDate eventStatus eventAttendanceMode location organizer].each do |property|
          add_error(errors, relative, "Event is missing #{property}") if event[property].nil?
        end
        add_error(errors, relative, "Event URL must equal canonical") unless event["url"] == canonical
        add_error(errors, relative, "Event image must equal the social image") unless Array(event["image"]).first == og_image
        begin
          start_time = Time.iso8601(event["startDate"])
          end_time = Time.iso8601(event["endDate"])
          add_error(errors, relative, "Event endDate must follow startDate") unless start_time < end_time
          unless correct_site_offset?(start_time) && correct_site_offset?(end_time)
            add_error(errors, relative, "Event dates use the wrong America/New_York UTC offset")
          end
        rescue ArgumentError, TypeError
          add_error(errors, relative, "Event dates must be ISO 8601 values")
        end
        add_error(errors, relative, "Event must use a recognized status") unless event["eventStatus"] == "https://schema.org/EventScheduled"
        address = event.dig("location", "address")
        %w[streetAddress addressLocality addressRegion postalCode addressCountry].each do |property|
          add_error(errors, relative, "Event address is missing #{property}") if address.nil? || address[property].to_s.empty?
        end
        visible_text = document.text.gsub(/\s+/, " ")
        street_address = address&.[]("streetAddress").to_s
        add_error(errors, relative, "Event street address is not visible on the page") unless visible_text.include?(street_address)
      end
    elsif events.any?
      add_error(errors, relative, "non-event page must not emit Event")
    end

    indexable << row
  end

  unless noindex.map { |row| row[:page_url] } == ["/404.html"]
    add_error(errors, "site", "404.html must be the only noindex HTML page")
  end

  {
    "title" => indexable.map { |row| row[:title] },
    "description" => indexable.map { |row| row[:description] },
    "canonical" => indexable.map { |row| row[:canonical] },
    "Open Graph title" => indexable.map { |row| row[:og_title] }
  }.each do |label, values|
    values.group_by(&:itself).each do |value, matches|
      add_error(errors, "site", "duplicate #{label}: #{value.inspect}") if value && matches.length > 1
    end
  end

  sitemap_path = File.join(destination, "sitemap.xml")
  unless File.file?(sitemap_path)
    add_error(errors, "sitemap.xml", "file is missing")
  else
    sitemap = Nokogiri::XML(File.read(sitemap_path)) { |config| config.strict }
    sitemap.remove_namespaces!
    locations = sitemap.css("url > loc").map { |node| node.text.strip }
    locations.each do |location|
      add_error(errors, "sitemap.xml", "URL must use #{ORIGIN}: #{location}") unless preferred_url?(location)
    end
    add_error(errors, "sitemap.xml", "contains duplicate URLs") unless locations.uniq.length == locations.length
    expected = indexable.map { |row| row[:canonical] }.sort
    missing = expected - locations
    extra = locations - expected
    add_error(errors, "sitemap.xml", "missing URLs: #{missing.join(', ')}") unless missing.empty?
    add_error(errors, "sitemap.xml", "unexpected URLs: #{extra.join(', ')}") unless extra.empty?
  end

  robots_path = File.join(destination, "robots.txt")
  if File.file?(robots_path)
    robots_text = File.read(robots_path)
    add_error(errors, "robots.txt", "must address every crawler") unless robots_text.include?("User-agent: *")
    add_error(errors, "robots.txt", "must allow the public site") unless robots_text.include?("Allow: /")
    add_error(errors, "robots.txt", "must advertise the canonical sitemap") unless robots_text.include?("Sitemap: #{ORIGIN}/sitemap.xml")
  else
    add_error(errors, "robots.txt", "file is missing")
  end

  feed_path = File.join(destination, "feed.xml")
  if File.file?(feed_path)
    feed_text = File.read(feed_path)
    add_error(errors, "feed.xml", "contains a non-canonical origin") if feed_text.include?("https://civictechdc.org")
    feed = Nokogiri::XML(feed_text) { |config| config.strict }
    feed.remove_namespaces!
    article_urls = indexable.filter_map do |row|
      row[:canonical] if row[:page_url].match?(ARTICLE_PATH)
    end.sort
    feed_urls = feed.css('entry > link[rel="alternate"]').map { |node| node["href"].to_s }.sort
    add_error(errors, "feed.xml", "must contain every blog post exactly once") unless feed_urls == article_urls
  else
    add_error(errors, "feed.xml", "file is missing")
  end

  if errors.empty?
    puts "SEO check passed: #{indexable.length} indexable pages, " \
         "#{noindex.length} noindex pages, #{redirects.length} redirects, " \
         "#{html_files.length} HTML files."
  else
    warn "SEO check failed with #{errors.length} error#{errors.length == 1 ? '' : 's'}:"
    errors.each { |error| warn "- #{error}" }
    exit 1
  end
end
