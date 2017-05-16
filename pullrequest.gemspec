# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = "pullrequest"
  spec.version       = "0.1.0"
  spec.authors       = ["Jens Ravens"]
  spec.email         = ["jens@nerdgeschoss.de"]

  spec.summary       = "Automatically create PRs for GitHub Flow"
  spec.homepage      = "https://nerdgeschoss.de"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = ["pr"]
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", "~> 5.1"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
