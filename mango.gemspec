require File.expand_path("lib/mango/version", File.dirname(__FILE__))

Gem::Specification.new do |s|
  s.license     = "MIT"
  s.name        = "mango"
  s.version     = Mango::VERSION
  s.author      = "Ryan Sobol"
  s.email       = "contact@ryansobol.com"
  s.homepage    = "https://github.com/ryansobol/mango"
  s.summary     = "Mango is a dynamic, database-free, and open source website framework."
  s.description = "Mango is a dynamic, database-free, and open source website framework that is designed to make life easier for small teams of designers, developers, and content writers."

  s.required_ruby_version     = "~> 2.0.0"
  s.required_rubygems_version = "~> 2.0.14"

  s.add_runtime_dependency "bundler",       "~> 1.3.5"
  s.add_runtime_dependency "thor",          "~> 0.14.6"
  s.add_runtime_dependency "sinatra",       "~> 1.4.4"
  s.add_runtime_dependency "haml",          "~> 4.0.4"
  s.add_runtime_dependency "sass",          "~> 3.2.12"
  s.add_runtime_dependency "liquid",        "~> 2.2.2"
  s.add_runtime_dependency "bluecloth",     "~> 2.1.0"
  s.add_runtime_dependency "coffee-script", "~> 2.2.0"
  s.add_runtime_dependency "foreman",       "~> 0.63.0"
  s.add_runtime_dependency "puma",          "~> 2.6.0"

  s.add_development_dependency "rack-test", "~> 0.6.0"
  s.add_development_dependency "rspec",     "~> 2.14.1"
  s.add_development_dependency "yard",      "~> 0.8.7.3"

  s.bindir             = "exec"
  s.files              = `git ls-files`.split("\n")
  s.test_files         = `git ls-files -- spec/*`.split("\n")
  s.executables        = `git ls-files -- exec/*`.split("\n").map { |f| File.basename(f) }
end
