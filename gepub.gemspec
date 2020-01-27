# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gepub/version"

Gem::Specification.new do |s|
  s.name        = "gepub"
  s.version     = GEPUB::VERSION
  s.authors     = ["KOJIMA Satoshi"]
  s.email       = ["skoji@mac.com"]
  s.homepage    = %q{http://github.com/skoji/gepub}
  s.summary     = %q{a generic EPUB library for Ruby.}
  s.description = %q{gepub is a generic EPUB parser/generator. Generates and parse EPUB2 and EPUB3}

  s.files         = `git ls-files`.split("\n").reject { |f| f.match(%r{^spec/}) }
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "nokogiri", ">= 1.8.2", "< 1.11"
  s.add_runtime_dependency "rubyzip", "> 1.1.1", "< 2.2"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
end
