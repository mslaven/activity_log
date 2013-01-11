# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activity_log/version'

Gem::Specification.new do |gem|
  gem.name          = "activity_log"
  gem.version       = ActivityLog::VERSION
  gem.authors       = ["Mike"]
  gem.email         = ["mslaven@gmail.com"]
  gem.description   = %q{Provides a simple activity logging and retrieval facility}
  gem.summary       = %q{Simple Activity Logging Facility}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]


  gem.add_runtime_dependency(%q<rails>, [">= 3.2.0"])
end
