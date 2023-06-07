#!/usr/bin/env bash
# exit on error
set -o errexit

bundle config set without development test
bundle config set force_ruby_platform true
bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean