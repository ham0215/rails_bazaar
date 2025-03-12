FROM ruby:3.4.1-slim

ARG FEATURE_NAME

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y curl libjemalloc2 \
    build-essential git pkg-config mariadb-client && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

RUN gem install bundler
COPY . /app

WORKDIR /app/${FEATURE_NAME}

RUN bundle install -j4

EXPOSE 80

CMD ["./bin/rails", "s", "-b", "0.0.0.0"]
