# extlib
begin # Try loading extensions
  require_relative "tokenizers/ext/#{RUBY_PLATFORM}/ext"
rescue LoadError
  begin
    require "tokenizers/ext"
  rescue LoadError # Fallback to require_relative due to some weird loading issue with rspec
    require_relative "tokenizers/ext"
  end
end

# modules
require "tokenizers/char_bpe_tokenizer"
require "tokenizers/version"

module Tokenizers
  class Error < StandardError; end

  def self.from_pretrained(identifier, revision: "main", auth_token: nil)
    _from_pretrained(identifier, revision, auth_token)
  end
end
