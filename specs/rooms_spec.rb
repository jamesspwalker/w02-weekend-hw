require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')

class TestGuests < Minitest::Test

  def setup
    @room1 = Room.new([], [])
    @guest1 = Guest.new("Mark")
    @song1 = Song.new("Mardy Bum")
  end

  def test_how_many_people_in_room
    assert_equal(0, @room1.guests.count)
  end

  def test_room_can_have_song
      @room1.room_gets_song(@song1)
      assert_equal("Mardy Bum", @room1.songs)
  end

end
