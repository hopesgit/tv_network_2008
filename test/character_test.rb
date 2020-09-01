require "./lib/character"
require "minitest/autorun"
require "minitest/pride"

class CharacterTest < Minitest::Test
  def test_it_is_character
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    assert_instance_of Character, kitt
  end
end
