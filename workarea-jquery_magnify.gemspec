$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "workarea/jquery_magnify/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "workarea-jquery_magnify"
  s.version     = Workarea::JqueryMagnify::VERSION
  s.authors     = ["Jeremie Ges"]
  s.email       = ["jges@weblinc.com"]
  s.homepage    = "https://github.com/workarea-commerce/workarea-jquery-magnify"
  s.summary     = "Add image zoom capabilities on mouseover"
  s.description = "Let your user enlarge images on mouseover, it's a great candidate for non touch enabled devices"
  
  s.files = `git ls-files`.split("\n")
  
  s.add_dependency 'workarea', '~> 3.x'
end
