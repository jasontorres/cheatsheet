# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cheatsheet/version'

Gem::Specification.new do |spec|
  spec.name          = "cheatsheet"
  spec.version       = Cheatsheet::VERSION
  spec.authors       = ["Jason Torres"]
  spec.email         = ["jason.e.torres@gmail.com"]

  spec.summary       = %q{cheatsheet: a terminal client for devhints.io}
  spec.description   = %q{Browse devhints.io cheatsheets from your terminal!}
  spec.homepage      = "http://devhints.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.executables   << "cheatsheet"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
