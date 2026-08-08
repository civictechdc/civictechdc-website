# frozen_string_literal: true

# Self-test for the pure helpers in check-seo.rb. The main script skips its
# site-wide run when required (see the $PROGRAM_NAME guard), so this loads
# fast and exercises the parsing logic that gates releases.
require "minitest/autorun"
require_relative "check-seo"

class CheckSeoHelpersTest < Minitest::Test
  def test_preferred_url_accepts_canonical_origin
    assert preferred_url?("https://www.civictechdc.org/projects.html")
  end

  def test_preferred_url_rejects_bare_domain_query_and_fragment
    refute preferred_url?("https://civictechdc.org/projects.html")
    refute preferred_url?("https://www.civictechdc.org/a?b=1")
    refute preferred_url?("https://www.civictechdc.org/a#c")
    refute preferred_url?("http://www.civictechdc.org/a")
    refute preferred_url?("not a url")
  end

  def test_secure_absolute_url
    assert secure_absolute_url?("https://github.com/civictechdc")
    refute secure_absolute_url?("http://github.com/civictechdc")
    refute secure_absolute_url?("https://user:pass@github.com/x")
    refute secure_absolute_url?("/relative/path")
  end

  def test_expected_page_path
    assert_equal "/", expected_page_path("index.html")
    assert_equal "/archive-dig/", expected_page_path("archive-dig/index.html")
    assert_equal "/projects.html", expected_page_path("projects.html")
  end

  def test_front_matter_value
    source = <<~DOC
      ---
      is_active: true
      factual_review_status: pending
      ---
      Body text is_active: false
    DOC
    assert_equal "true", front_matter_value(source, "is_active")
    assert_equal "pending", front_matter_value(source, "factual_review_status")
    assert_nil front_matter_value(source, "missing_key")
  end

  def test_refresh_target
    node = Nokogiri::HTML(
      '<meta http-equiv="refresh" content="0; url=https://www.civictechdc.org/a">'
    ).at_css("meta")
    assert_equal "https://www.civictechdc.org/a", refresh_target(node)
    blank = Nokogiri::HTML('<meta http-equiv="refresh" content="junk">').at_css("meta")
    assert_nil refresh_target(blank)
  end

  def test_factual_review_evidence_reference
    good = factual_review_evidence_reference(
      "https://github.com/civictechdc/civictechdc-website/pull/212#issuecomment-12345"
    )
    assert_equal "12345", good[:comment_id]
    assert_equal "pull", good[:kind]
    assert_nil factual_review_evidence_reference(
      "https://github.com/other/repo/pull/1#issuecomment-9"
    )
    assert_nil factual_review_evidence_reference(
      "https://github.com/civictechdc/civictechdc-website/pull/212"
    )
  end

  def test_unlisted_pages_are_declared
    assert_includes UNLISTED_PAGES, "archive-dig/index.html"
  end
end
