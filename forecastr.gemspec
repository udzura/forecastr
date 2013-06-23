# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'forecastr/version'

Gem::Specification.new do |spec|
  spec.name          = "forecastr"
  spec.version       = ForecastR::VERSION
  spec.authors       = ["KONDO Uchio"]
  spec.email         = ["udzura@udzura.jp"]
  spec.description   = %q{A hardcore small visualization tool}
  spec.summary       = %q{A hardcore small visualization tool - clone of GrowthForecast}
  spec.homepage      = "https://github.com/udzura/forecastr"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "sinatra", "~> 1.4"
  spec.add_runtime_dependency "gruff"
  spec.add_runtime_dependency "sqlite3"
  spec.add_runtime_dependency "sequel"
  spec.add_runtime_dependency "thor"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "minitest"
end
