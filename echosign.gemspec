# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'echosign/version'

Gem::Specification.new do |spec|
  spec.name          = "echosign"
  spec.version       = Echosign::VERSION
  spec.authors       = ["Bernard Worthy"]
  spec.email         = ["cthomas@railjumper.com"]
  spec.summary       = %q{Package summary}
  spec.description   = %q{A ruby gem that simplifies the use of Adobe's EchoSign web API.}
  spec.homepage      = "http://github.com/bernardworthy/echosign"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "hitch"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "factory_girl"
  spec.add_development_dependency "simplecov"

  spec.add_dependency "json"
  spec.add_dependency "httparty"
end
