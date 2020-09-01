require "./lib/character"
require "./lib/show"

class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    @shows.map do |show|
      show.characters.find_all do |character|
        # require "pry"; binding.pry
        character.salary > 500000 && character.name[1].ord == character.name.upcase[1].ord
      end
    end.flatten
  end
end
