FROM ruby:3.4.1-slim

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y curl libjemalloc2 \
    build-essential git pkg-config mariadb-client && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

WORKDIR /app
RUN gem install bundler
COPY feature_user.gemspec Gemfile Gemfile.lock .tool-versions /app/
COPY lib/feature_user/version.rb /app/lib/feature_user/version.rb

RUN bundle install -j4

COPY . /app

EXPOSE 80

CMD ["./bin/rails", "s", "-b", "0.0.0.0"]
