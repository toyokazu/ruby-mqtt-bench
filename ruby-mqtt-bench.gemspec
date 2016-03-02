# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "ruby-mqtt-bench"
  spec.version       = "0.0.1"
  spec.authors       = ["Toyokazu Akiyama"]
  spec.email         = ["toyokazu@gmail.com"]

  spec.summary       = %q{mqtt benchmark for ruby}
  spec.description   = %q{mqtt benchmark for ruby}
  spec.homepage      = "https://github.com/toyokazu/ruby-mqtt-bench"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.gsub(/images\/[\w\.]+\n/, "").split($/)
  spec.bindir        = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.executables   = spec.files.grep(%r{^bin/})
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "mqtt", "~> 0.3"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
