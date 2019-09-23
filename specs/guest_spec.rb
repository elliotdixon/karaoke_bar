require("minitest/autorun")
require("minitest/rg")
require_relative("../Guest.rb")
require_relative("../Song.rb")

class GuestTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Elliot", 500, @song1)
    @guest2 = Guest.new("Charlie", 100, @song2)
  end

  def test_guest1_name()
    assert_equal("Elliot", @guest1.name)
  end

  def test_guest2_name()
    assert_equal("Charlie", @guest2.name)
  end

  def test_get_wallet()
    assert_equal(500, @guest1.wallet)
  end

end
