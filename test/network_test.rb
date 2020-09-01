require "minitest/autorun"
require "minitest/pride"
require "./lib/network"

class NetworkTest < Minitest::Test
  def test_it_is_network
    nbc = Network.new("NBC")

    assert_instance_of Network, nbc
  end

  def test_it_has_attributes
    nbc = Network.new("NBC")

    assert_equal "NBC", nbc.name
    assert_equal [], nbc.shows
  end
end
