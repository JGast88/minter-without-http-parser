# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "minter"
  spec.version = "1.0.1"
  spec.authors = ["Alexander Nikolaev"]

  spec.summary       = "This is a Ruby SDK based on Golang SDK for working with Minter blockchain"
  spec.description   = "This is a Ruby SDK based on Golang SDK for working with Minter blockchain"
  spec.homepage      = "https://github.com/rubyroid-team/minter"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/rubyroid-team/minter"
  spec.metadata["changelog_uri"] = "https://github.com/rubyroid-team/minter/blob/master/CHANGELOG.md"

  spec.files         = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md", "lib/ffi/**/*"]

  spec.require_paths = ["lib"]

  spec.add_dependency "dotenv", "~> 2.7", ">= 2.7.5"
  spec.add_dependency "ffi", "~> 1.12", ">= 1.12.2"
  spec.add_dependency "http", "~> 5.0.4", ">= 5"
  spec.add_dependency "json", "~> 2.3", ">= 2.3.0"
  spec.add_dependency "rake", "~> 13.0", ">= 13"

  spec.add_development_dependency "rspec", "~> 3.9", ">= 3.9.0"
end
