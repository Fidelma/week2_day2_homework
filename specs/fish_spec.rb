require('minitest/autorun')
require('minitest/rg')

require_relative('../fish.rb')

class TestFish < MiniTest::Test
  def setup()
    @fish = Fish.new("Fred")
  end

  def test_name
    assert_equal("Fred", @fish.name)
  end
end
