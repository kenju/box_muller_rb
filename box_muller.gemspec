
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "box_muller/version"

Gem::Specification.new do |spec|
  spec.name          = "box_muller"
  spec.version       = BoxMuller::VERSION
  spec.authors       = ["kenju"]
  spec.email         = ["ken901waga@gmail.com"]

  spec.summary       = %q{BoxMuller implementation in Ruby}
  spec.homepage      = "https://github.com/kenju/box_muller_rb"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
