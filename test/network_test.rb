require './lib/character'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/show'
require './lib/network'
require './lib/character'

class NetworkTest < Minitest::Test

  def setup
  @nbc = Network.new("NBC")

  @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
  @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
  @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

  @parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [@leslie_knope, @ron_swanson])
  @leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
  @ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
  end

  def test_network_exists
    assert_instance_of Network, @nbc
  end

  def test_it_has_a_name

    assert_equal "NBC", @nbc.name
  end

  def test_if_network_has_shows

    assert_equal [], @nbc.shows
  end

  def test_you_can_add_shows
    @nbc = Network.new("NBC")

    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    @parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [@leslie_knope, @ron_swanson])
    @leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    @ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})

    @nbc.add_show(@knight_rider)
    @nbc.add_show(@parks_and_rec)

    assert_equal [@knight_rider, @parks_and_rec], @nbc.shows
  end

  def test_network_highest_paid_actor
      @nbc = Network.new("NBC")

      @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
      @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
      @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

      @parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [@leslie_knope, @ron_swanson])
      @leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
      @ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})

    assert_equal "Amy Poehler", @nbc.highest_paid_actor
  end

end
