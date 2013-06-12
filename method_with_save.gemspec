# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'method_with_save/version'

Gem::Specification.new do |spec|
  spec.name          = "method_with_save"
  spec.version       = MethodWithSave::VERSION
  spec.authors       = ["Shigeki Doumae"]
  spec.email         = ["shigeki.doumae@gmail.com"]
  spec.description   = %q{Have you ever wanted to have created a method, you would like this method + save? This gem allows you to it. You can call the method name + _with_save, save up I will be.}
  spec.summary       = %q{method_name + '_with_save'}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
