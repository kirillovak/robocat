FROM ruby:2.6.5

RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev libnss3 libx11-xcb1 libxss1 libasound2 libxtst6 libgtk-3-0 libx11-6 libxcomposite1 libgdk-pixbuf2.0-0 libnspr4 libnss3 libgconf-2-4

ENV INSTALL_PATH /test_framework
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .
