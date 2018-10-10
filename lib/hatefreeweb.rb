require "rubygems"
gem "mash"
require "mash"
gem "httparty"
require "httparty"

class APIKeyNotSet < StandardError; end

module Hatefreeweb

  # Get your API key from https://www.hatefreeweb.org
  def self.api_key
    raise APIKeyNotSet if @api_key.nil?
    @api_key
  end

  def self.api_key=(api_key)
    @api_key = api_key
  end
end

directory = File.expand_path(File.dirname(__FILE__))

require File.join(directory, "hatefreeweb", "client")
