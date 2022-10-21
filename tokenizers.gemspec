require_relative "lib/tokenizers/version"

BUILT_PLATFORMS = ["arm64--darwin21", "x86_64-linux"]

Gem::Specification.new do |spec|
  spec.name          = "tokenizers"
  spec.version       = Tokenizers::VERSION
  spec.summary       = "Fast state-of-the-art tokenizers for Ruby"
  spec.homepage      = "https://github.com/ankane/tokenizers-ruby"
  spec.license       = "Apache-2.0"

  spec.author        = "Andrew Kane"
  spec.email         = "andrew@ankane.org"

  spec.files         = Dir["*.{md,txt}", "{ext,lib,src}/**/*", "Cargo.*"]
  spec.require_path  = "lib"

  unless BUILT_PLATFORMS.include?(RUBY_PLATFORM)
    spec.extensions = ["ext/tokenizers/extconf.rb"]
  end

  spec.required_ruby_version = ">= 2.7"
end
