source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in paginate.gemspec.
gemspec
gem "sassc-rails", "~> 2.1"

group :development do
  gem 'sqlite3'
  gem "puma"
end

group :test do
  gem "capybara", git: 'https://github.com/teamcapybara/capybara', branch: "puma_master_changes"
  gem "selenium-webdriver"
end

# To use a debugger
# gem 'byebug', group: [:development, :test]
