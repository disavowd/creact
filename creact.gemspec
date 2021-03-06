# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'creact/version'

Gem::Specification.new do |spec|
  spec.name          = "creact"
  spec.version       = Creact::VERSION
  spec.authors       = ["Dave Bush"]
  spec.email         = ["github@david-bush.co.uk"]

  spec.summary       = %q{Provides React integration with Cuba}
  spec.homepage      = "https://github.com/disavowd/creact"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 11.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "guard-shell"
  spec.add_development_dependency "pry-rescue"
  spec.add_development_dependency "pry-byebug"
  spec.add_dependency 'opal'
  spec.add_dependency 'jquery'
  spec.add_dependency 'opal-jquery'
  spec.add_dependency 'nokogiri'
  spec.add_dependency 'reactive-ruby'
  spec.add_dependency 'thor'
end
