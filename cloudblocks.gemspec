# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cloudblocks/version'

Gem::Specification.new do |spec|
  spec.name          = "cloudblocks"
  spec.version       = Cloudblocks::VERSION
  spec.authors       = ["lethalpaga"]
  spec.email         = ["lethalpaga@gmail.com"]

  spec.summary       = %q{Like legos but for the cloud}
  spec.description   = %q{Allows the creation of resources in AWS using reusable blocks}
  spec.homepage      = "https://github.com/lethalpaga/cloudblocks"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
