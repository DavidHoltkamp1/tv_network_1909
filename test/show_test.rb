require './lib/character'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/show'

class ShowTest < Minitest::Test

  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})

    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
  end

  def test_show_exists
  @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])

  assert_instance_of Show, @knight_rider
  end

  def test_show_has_a_name
  @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])

  assert_equal "Knight Rider", @knight_rider.name
  end

  def test_show_has_a_creator
  @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])

  assert_equal "Glen Larson", @knight_rider.creator
  end

  def test_show_has_characters
  @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])

  assert_equal [@michael_knight, @kitt], @knight_rider.characters
  end

  def test_total_salary_of_characters
  @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])

  @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})

  assert_equal 2600000, @knight_rider.total_salary

  end
end
