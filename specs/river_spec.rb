require('minitest/autorun')
require('minitest/rg')

require_relative('../river.rb')
require_relative('../fish.rb')

class TestRiver < MiniTest::Test
  def setup()

    @fish1 = Fish.new("Franky")
    @fish2 = Fish.new("Frank")
    @fish3 = Fish.new("Frank")
    @fish4 = Fish.new("Frank")
    @fish5 = Fish.new("Frank")
    @fish6 = Fish.new("Frank")
    @fish_in_river = [@fish1, @fish2, @fish3, @fish4, @fish5, @fish6]

    @river = River.new("Amazon", @fish_in_river)
  end

  def test_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_has_fish
    assert_equal(6, @river.fish_count)
  end

  def test_lost_fish
    @river.lose_fish(@fish1)
    assert_equal(5, @river.fish_count)
  end
end
