FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /forecaster
WORKDIR /forecaster
ADD Gemfile /forecaster/Gemfile
ADD Gemfile.lock /forecaster/Gemfile.lock
RUN bundle install
ADD . /forecaster
