FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /hotel_api
WORKDIR /hotel_api
COPY Gemfile /hotel_api/Gemfile
COPY Gemfile.lock /hotel_api/Gemfile.lock
RUN bundle install
COPY . /hotel_api