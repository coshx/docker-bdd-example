#!/bin/bash

bundle exec rake db:create db:migrate
bundle exec rackup -p 3000 -o 0.0.0.0
