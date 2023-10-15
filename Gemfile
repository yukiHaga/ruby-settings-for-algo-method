# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# gem "rails"

group :development do
  gem "prettier", require: false
  gem "rspec", require: false
  gem "rubocop", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rspec", require: false
  gem "solargraph", require: false
end

group :development, :test do
  gem "faker"
end