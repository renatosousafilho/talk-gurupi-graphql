FROM ruby:2.4.2
# Update and install deps
RUN apt-get update -qq && apt-get install -y \
build-essential libpq-dev mysql-client nodejs \
imagemagick gcc antiword
# Node.js
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
  && apt-get install -y
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app
