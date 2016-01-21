# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simplemerchant/version'

Gem::Specification.new do |spec|
  spec.name          = 'simplemerchant'
  spec.version       = SimpleMerchant::VERSION
  spec.authors       = ['Edward Woodcock']
  spec.email         = ['edward@simple-merchant.com']

  spec.summary       = 'A Ruby wrapper for the Simple Merchant API'
  spec.description   = 'A Ruby wrapper for the Simple Merchant API'
  spec.homepage      = 'https://github.com/simplemerchant/simplemerchant-ruby'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rubocop', '~> 0.36.0'
  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
