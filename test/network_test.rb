require "minitest/autorun"
require "minitest/pride"
require "./lib/network"

class NetworkTest < Minitest::Test
  def test_it_is_network
    nbc = Network.new("NBC")

    assert_instance_of Network, nbc
  end
end
