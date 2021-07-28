# frozen_string_literal: true

require_relative "ipgeobase/version"
require_relative "ipgeobase/address"
require "addressable/uri"
require "net/http"
require "json"

# module
module Ipgeobase
  class Error < StandardError; end

  def self.lookup(ip_adress)
    @url = "http://ip-api.com/xml/#{ip_adress}"
    @response = Net::HTTP.get_response(URI.parse(@url)).body
    Address.parse(@response)
  end
end
