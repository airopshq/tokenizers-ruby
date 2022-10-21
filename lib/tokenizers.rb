# extlib
begin # Try loading extensions
  require_relative "tokenizers/ext/#{RUBY_PLATFORM}/ext"
rescue LoadError
  require "tokenizers/ext"
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
