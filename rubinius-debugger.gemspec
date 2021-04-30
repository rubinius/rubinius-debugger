# coding: utf-8
require './lib/rubinius/debugger/version'

Gem::Specification.new do |spec|
  spec.name          = "rubinius-debugger"
  spec.version       = Rubinius::Debugger::VERSION
  spec.authors       = ["Brian Shirai"]
  spec.email         = ["brixen@gmail.com"]
  spec.description   = %q{Rubinius debugger.}
  spec.summary       = %q{Rubinius debugger.}
  spec.homepage      = "https://github.com/rubinius/rubinius-debugger"
  spec.license       = "BSD"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", ">= 12.3.3"
end
