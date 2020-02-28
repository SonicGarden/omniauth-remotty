# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/remotty/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-remotty"
  spec.version       = Omniauth::Remotty::VERSION
  spec.authors       = ["LuckOfWise"]
  spec.email         = ["luckofwise@sonicgarden.jp"]

  spec.summary       = %q{OmniAuth strategy for Remotty}
  spec.description   = %q{OmniAuth strategy for Remotty}
  spec.homepage      = "https://github.com/SonicGarden/omniauth-remotty"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth-oauth2', '~> 1.6.0'
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
