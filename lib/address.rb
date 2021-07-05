require "happymapper"

class Address
  include HappyMapper
  tag 'query'

  element :lat, Float, tag: 'lat'
  element :lon, Float, tag: 'lon'
  element :countryCode, String, tag: 'countryCode'
  element :city, String, tag: 'city'
  element :country, String, tag: 'country'
end
