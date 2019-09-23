require("minitest/autorun")
require ("minitest/rg")
require_relative("../Song.rb")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Kali Ma", "Neck Deep")
    @song2 = Song.new("See You Again", "Tyler, The Creator")
  end

  def test_setup
    assert_equal("Kali Ma", @song1.name)
    assert_equal("Tyler, The Creator", @song2.artist)
  end

end
