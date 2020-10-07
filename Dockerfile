FROM ruby:2.4.1
 
RUN mkdir /LogSign_ms
WORKDIR /LogSign_ms
 
ADD Gemfile /LogSign_ms/Gemfile
ADD Gemfile.lock /LogSign_ms/Gemfile.lock

RUN apt-get update
RUN apt-get install -y sqlite3 libsqlite3-dev
RUN gem install bundler    

# RUN bundle update --bundler
RUN gem install bundler --pre

RUN bundle install --binstubs    
RUN bundle binstubs bundler --force

RUN bundle install


ADD . /LogSign_ms
 
EXPOSE 5001