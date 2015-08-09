# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bmi_gem_bundler/version'

Gem::Specification.new do |spec|
  spec.name          = "z15015to_bmi_gem_bundler"
  spec.version       = BmiGemBundler::VERSION	
  spec.authors       = "Tetsuya OCHIAI"
  spec.email         = "z15015to@aiit.ac.jp"

  spec.summary       = %q{bmi_gem_bundler}
  spec.description   = %q{bmi_gem_bundler}
  spec.homepage      = "http://rubygems.org/gems/z15015to_bmi_gem_bundler"
  spec.license       = "MIT"
=begin
  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://rubygems.org/gems/bmi_gem_bundler"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end
=end
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
