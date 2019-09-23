require("minitest/autorun")
require("minitest/rg")
require_relative("../Room.rb")
require_relative("../Guest.rb")
require_relative("../Song.rb")

class RoomTest < MiniTest::Test

  def setup()
    @room1 = Room.new("Refuel", 5, 50)
    @room2 = Room.new("Room 2", 15, 100)
    @guest1 = Guest.new("Elliot", 500, @song1)
    @guest2 = Guest.new("Charlie", 100, @song2)
    @song1 = Song.new("Kali Ma", "Neck Deep")
    @song2 = Song.new("See You Again", "Tyler, The Creator")
  end

  def test_room_name()
    assert_equal("Refuel", @room1.name)
  end

  def test_till()
    assert_equal(0, @room1.till)
  end

  def test_entry_fee()
    assert_equal(100, @room2.entry_fee)
  end

  def test_check_if_guest_on_room()
    assert_equal([], @room2.guests)
  end

  def test_room_songs()
    assert_equal([], @room1.songs)
  end

  def test_check_guest_in()
      @room1.check_guest_in(@guest1)
      assert_equal(1, @room1.guests.count)
      assert(@room1.guests.include?(@guest1))
      assert_equal(450, @guest1.wallet)
      assert_equal(50, @room1.till)
    end

  def test_check_guest_out()
    @room1.check_guest_in(@guest2)
    @room1.check_guest_out(@guest2)
    assert_equal(0, @room1.guests.count)
    assert(!@room1.guests.include?(@guest2))
  end

  def test_add_song()
    @room1.add_song(@song1)
    assert_equal(1, @room1.songs.count)
    assert(@room1.songs.include?(@song1))
  end

end
