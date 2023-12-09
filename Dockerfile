FROM ruby:3.1.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs vim
RUN mkdir /rails-sample-app
WORKDIR /rails-sample-app
ADD Gemfile /rails-sample-app/Gemfile
ADD Gemfile.lock /rails-sample-app/Gemfile.lock
RUN bundle install
ADD . /rails-sample-app