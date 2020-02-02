source "https://rubygems.org"

# Specify your gem's dependencies in bolt_taskgen.gemspec
gemspec

group :development do
  gem 'pry', '~> 0.12'
end

eval_gemfile("#{__FILE__}.local") if File.exist?("#{__FILE__}.local")
