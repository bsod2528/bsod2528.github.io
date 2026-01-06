# frozen_string_literal: true

source "https://rubygems.org"

# Core Jekyll
gem "jekyll", "~> 4.3"
gem "webrick", "~> 1.8"
gem "erb", "~> 4.0"

# Jekyll plugins
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.15"
  gem "jekyll-sitemap", "~> 1.4"
end

# Windows-specific timezone support
platforms :windows, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end
