# Ruby version should match https://pages.github.com/versions/
FROM ruby:2.7.3-alpine3.13

# Native extensions require compilation
RUN apk add --update make gcc g++ musl-dev patch

# Bundler version should match the last line in Gemfile.lock
RUN gem install bundler:1.16.2

WORKDIR /project
COPY Gemfile* ./
RUN bundle update --bundler
RUN bundle install

ENTRYPOINT ["bundle", "exec", "jekyll"]
CMD ["serve", "--host=0.0.0.0"]
