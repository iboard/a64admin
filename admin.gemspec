$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "admin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "admin"
  s.version     = Admin::VERSION
  s.authors     = ["Andreas Altendorfer"]
  s.email       = ["andreas@altendorfer.at"]
  s.homepage    = "http://a64.iboard.cc"
  s.summary     = "Admin-Engine for project A64"
  s.description = "http://iboard.github.com"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.8"

  s.add_development_dependency "mongoid"
  s.add_development_dependency "bson_ext"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "bootstrap-sass", '2.0.4.2'
  s.add_development_dependency "capybara-webkit"
end
