# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'quickbooks-ruby-base'
  spec.version       = '1.6.0'
  spec.authors       = ["Christian"]
  spec.email         = ["christian@minimul.com"]
  spec.summary       = %q{Base class to provide common methods for the quickbooks-ruby gem}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/minimul/quickbooks-ruby-base"
  spec.license       = "MIT"
  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep %r{^spec/}
  spec.require_paths = ["lib"]

  spec.add_dependency 'quickbooks-ruby', :git => 'https://github.com/rickbarrette/quickbooks-ruby.git', :branch => " rickbarrette-estimate-pdf-patch"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

end
