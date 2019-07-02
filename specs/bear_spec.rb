require('minitest/autorun')
require('minitest/rg')

require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class TestBear < MiniTest::Test
  def setup()
    @bear = Bear.new("Barry", "Brown")

    @fish1 = Fish.new("Frank")
    @fish2 = Fish.new("Fred")
    @fish3 = Fish.new("Fran")
    @fish4 = Fish.new("Fil")
    @fish5 = Fish.new("Fi")
    @fish6 = Fish.new("Franky")

    @fish_in_river = [@fish1, @fish2, @fish3, @fish4, @fish5, @fish6]

    @river = River.new("Amazon", @fish_in_river)
  end

  def test_name
    assert_equal("Barry", @bear.name)
  end

  def test_type
    assert_equal("Brown", @bear.type)
  end

  def test_number_of_fish_in_stomach
    assert_equal(0, @bear.number_of_fish_in_stomach)
  end
  #
  # def test_eat_fish
  #   @bear.eat_fish("Fred", @river)
  #   @bear.eat_fish("Franky", @river)
  #   assert_equal(2, @bear.number_of_fish_in_stomach)
  # end

  def test_eat_fish_from_river
    @bear.eat_fish_from_river(@fish1, @river)
    assert_equal(1, @bear.number_of_fish_in_stomach)
    assert_equal(5, @river.fish_count)
  end

  def test_roar
    assert_equal("roar", @bear.roar)
  end 
end
