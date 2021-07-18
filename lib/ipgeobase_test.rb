# frozen_string_literal: true

require "../test/test_helper.rb"
require "webmock/minitest"

require "./ipgeobase.rb"

class IpgeobaseTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def setup
    stub_request(:get, "http://ip-api.com/xml/83.169.216.199").
      to_return(body: File.new('../tmp/ipgeobase_mock.xml'), status: 200)

    @test_ip = "83.169.216.199"
    @ipgeobase = Ipgeobase.lookup(@test_ip)
  end
   def test_city
    assert_equal "Yekaterinburg", @ipgeobase.city
  end

  def test_country
    assert_equal  "Russia", @ipgeobase.country
  end

  def test_countryCode
    assert_equal "RU", @ipgeobase.countryCode
  end

  def test_lat
    assert_equal 56.8333, @ipgeobase.lat
  end

  def test_lon
    assert_equal 60.6, @ipgeobase.lon
  end
end
