# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'augmentations/version'

Gem::Specification.new do |spec|
  spec.name          = "augmentations"
  spec.version       = Augmentations::VERSION
  spec.authors       = ["Benjamin Randles-Dunkley"]
  spec.email         = ["ben@chemica.co.uk"]
  spec.summary       = %q{A tiny, focussed gem for easily creating 'concerns', based on https://github.com/henrik/augmentations}
  spec.description   = %q{The concern mechanism in ActiveSupport is handy but the code does a lot of stuff, most of which isn't needed in the vast majority of cases. Code you don't need is code that can cause unexpected issues. This gem, based on the wonderful 'augmnentations' plugin by henrik, provides similar behaviour without the cruft. Or, indeed, ActiveSupport.}
  spec.homepage      = "https://github.com/chemica/augmentations-gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
