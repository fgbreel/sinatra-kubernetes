FROM ruby:buster

COPY Gemfile* /app/
WORKDIR /app
RUN bundle install
COPY . /app
