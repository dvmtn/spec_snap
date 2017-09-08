# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spec_snap/version'

Gem::Specification.new do |spec|
  spec.name          = "spec_snap"
  spec.version       = SpecSnap::VERSION
  spec.authors       = ["Adam Whittingham"]
  spec.email         = ["adam@devmountain.co.uk", "adam.whittingham@gmail.com"]

  spec.summary       = %q{RSpec helpers ready configured to make life easier.}
  spec.homepage      = "https://github.com/dvmtn/spec_snap"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
