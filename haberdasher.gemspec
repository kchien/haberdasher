# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'haberdasher/version'

Gem::Specification.new do |spec|
  spec.name          = "haberdasher"
  spec.version       = Haberdasher::VERSION
  spec.authors       = ["Kenrick Chien"]
  spec.email         = ["ken.chien@gmail.com"]
  spec.description   = %q{Decorators for your models}
  spec.summary       = %q{haberdasher is inspired by the excellent draper gem.
  Its initial goal is to support legacy apps written in Rails 2.3.5, and possibly in the future,
  more recent versions of Rails as well.
  }
  spec.homepage      = "https://github.com/kchien/haberdasher"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activesupport", "~> 2.3.5"

  spec.add_development_dependency "appraisal"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.13.0"
end
