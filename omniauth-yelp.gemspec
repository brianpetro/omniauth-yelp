# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-yelp/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-yelp"
  s.version     = Omniauth::Yelp::VERSION
  s.authors     = ["Lorgio Jimenez"]
  s.email       = ["lorgio.jimenez@gmail.com"]
  s.homepage    = "https://github.com/arunagw/omniauth-yelp"
  s.summary     = %q{Yelp OAuth strategy for OmniAuth}
  s.description = %q{Yelp OAuth strategy for OmniAuth}

  s.rubyforge_project = "omniauth-yelp"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'omniauth', '~> 1.0'
  s.add_dependency 'omniauth-oauth2', '~> 1.0'
  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'debugger'
end
