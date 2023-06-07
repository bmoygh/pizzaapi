#!/usr/bin/env bash
# exit on error
set -o errexit

bundle config set without development test
bundle config set force_ruby_platform true
bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java
bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean