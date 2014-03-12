# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'page_monitor/version'

Gem::Specification.new do |spec|
  spec.name          = "page_monitor"
  spec.version       = PageMonitor::VERSION
  spec.authors       = ["RUG Luxembourg"]
  spec.description   = %q{Monitors a web page for changes and sends email notifications}
  spec.summary       = %q{Monitors a web page for changes and sends email notifications}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "minitest-ansi"

  spec.add_dependency "mail"
end
