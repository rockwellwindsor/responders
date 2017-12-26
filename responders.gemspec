$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "responders/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "responders"
  s.version     = Responders::VERSION
  s.authors     = ["Rockwellwindsor"]
  s.email       = ["rockwellwindsor@gmail.com"]
  s.homepage    = ""
  s.summary     = "Summary of Responders."
  s.description = "Description of Responders."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.5"

  s.add_development_dependency "sqlite3"
end
