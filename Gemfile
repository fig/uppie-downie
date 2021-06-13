source "https://rubygems.org"
ruby "2.7.3"

gem "acts_as_votable", "~> 0.13.1"
gem "bootsnap", ">= 1.4.4", require: false
gem "devise", git: "https://github.com/heartcombo/devise"
gem "jbuilder", "~> 2.7"
gem "puma", "~> 5.0"
gem "rails", "~> 6.1.3", ">= 6.1.3.2"
gem "sass-rails", ">= 6"
gem "turbolinks", "~> 5"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
gem "webpacker", "6.0.0.beta.7"

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "factory_bot_rails", "~> 6.2"
  gem "faker", "~> 2.18"
  gem "rspec-rails", "~> 5.0"
  gem "sqlite3", "~> 1.4"
end

group :development do
  gem "guard-rspec", require: false, git: "https://github.com/fig/guard-rspec.git"
  gem "rack-mini-profiler", "~> 2.0"
  gem "rubocop", "~> 1.16"
  gem "rubocop-performance", "~> 1.11"
  gem "rubocop-rails", "~> 2.10"
  gem "rubocop-rspec", "~> 2.4"
  gem "web-console", ">= 4.1.0"
end

group :test do
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver"
  gem "webdrivers"
end

group :production do
  gem "pg"
end
