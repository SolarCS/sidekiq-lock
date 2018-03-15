# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sidekiq/lock/version'

Gem::Specification.new do |spec|
  spec.name          = "sidekiq-lock"
  spec.version       = Sidekiq::Lock::VERSION
  spec.authors       = ["Rafal Wojsznis"]
  spec.email         = ["rafal.wojsznis@gmail.com"]
  spec.description   = spec.summary = "Simple redis-based lock mechanism for your sidekiq workers"
  spec.homepage      = "https://github.com/emq/sidekiq-lock"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sidekiq", ">= 2.14.0"
  spec.add_dependency "redis",   ">= 3.0.5"
  spec.add_dependency "request_store_rails", "~> 1.0.3"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "coveralls", "~> 0.8"
  spec.add_development_dependency "mocha", "~> 0.14.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "appraisal"
end
