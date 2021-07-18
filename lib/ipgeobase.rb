# frozen_string_literal: true

require_relative "ipgeobase/version"
require "addressable/uri"
require "net/http"
require "json"
require "happymapper"

module Ipgeobase
  class Error < StandardError; end
  class Address
    include HappyMapper
    tag 'query'
    element :lat, Float, tag: 'lat'
    element :lon, Float, tag: 'lon'
    element :countryCode, String, tag: 'countryCode'
    element :city, String, tag: 'city'
    element :country, String, tag: 'country'
  end

  def self.lookup(ip_adress)
    @url = "http://ip-api.com/xml/#{ip_adress}"
    @response = Net::HTTP.get_response(URI.parse(@url)).body
    Address.parse(@response)
  end
end
