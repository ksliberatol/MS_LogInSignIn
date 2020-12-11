#!/bin/bash

bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails db:setup
rm -f /logsign_ms/tmp/pids/server.pid
bundle exec rails s -p 5001 -b 0.0.0.0