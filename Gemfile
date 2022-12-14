source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.2", ">= 7.0.2.3"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use sqlite3 as the database for Active Record
# gem "sqlite3", "~> 1.4"

# Use PostgreSQL instead of SQLite
# Ref: https://dev.to/dauncy/transitioning-from-sqlite-to-postgres-in-rails-56on
gem "pg"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Ref: https://github.com/perfectline/validates_url
gem "validate_url"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri mingw x64_mingw]

  # Ref: https://github.com/thoughtbot/factory_bot_rails#configuration
  gem "factory_bot_rails"

  # Ref: https://github.com/rspec/rspec-rails#installation
  gem "rspec-rails"

  # Ref: https://github.com/thoughtbot/shoulda-matchers#getting-started
  gem "shoulda-matchers"

  # Ref: https://github.com/bkeepers/dotenv#rails
  gem "dotenv-rails" # , groups: [:development, :test]

  # CircleCI dependency
  gem "rspec_junit_formatter", require: false # Ref: https://github.com/rspec/rspec-rails/issues/1645#issuecomment-815679819

  # Use Rubocop for ERB linting
  # gem "rubocop"

  # Use Standard for Ruby linting
  # Ref: https://github.com/testdouble/standard
  gem "standard" # , group: [:development, :test]

  # https://github.com/Shopify/erb-lint#installation
  gem "erb_lint", require: false

  # https://github.com/pry/pry-rails#installation
  gem "pry-rails"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

gem "flipper-active_record"
gem "flipper-ui"
gem "flipper"
gem "flutterwave_sdk"
gem "httparty"
gem "square.rb"
gem "stripe"
