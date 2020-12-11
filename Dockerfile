FROM ruby:2.4.1

RUN mkdir /logsign_ms
WORKDIR /logsign_ms

ADD Gemfile /logsign_ms/Gemfile
ADD Gemfile.lock /logsign_ms/Gemfile.lock

RUN apt-get update
RUN apt-get install -y sqlite3 libsqlite3-dev
RUN gem install bundler

# RUN bundle update --bundler
RUN gem install bundler --pre

RUN bundle install --binstubs
RUN bundle binstubs bundler --force

RUN bundle install

ADD . /logsign_ms

EXPOSE 5001

RUN chmod 755 entrypoint.sh
COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "entrypoint.sh"]