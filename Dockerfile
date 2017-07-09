FROM ruby:2.4-slim

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential libpq-dev

ENV INSTALL_PATH /theonebot

WORKDIR $INSTALL_PATH

COPY Gemfile .

RUN bundle install

COPY . .

CMD rackup config.ru -o 0.0.0.0

