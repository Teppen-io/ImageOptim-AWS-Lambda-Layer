FROM lambci/lambda:build-ruby2.5 AS build-env
LABEL maintainer "tom@teppen.io"

ADD Gemfile /var/task/Gemfile
RUN bundle && bundle install --without development test --deployment
