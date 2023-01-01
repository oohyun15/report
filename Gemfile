# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.3", ">= 7.0.3.1"
gem "sprockets-rails"
gem "puma", "~> 5.0"
gem "redis", "~> 4.0"
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem "bootsnap", require: false
gem "pg"

group :development, :test do
  gem "pry"
  gem "pry-rails"
  gem "pry-byebug"
end

group :test do
  gem "rspec"
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem "faker"
end
