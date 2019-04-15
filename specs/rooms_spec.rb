require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')

class TestGuests < Minitest::Test

  def setup
    @room1 = Room.new([@guest2, @guest3], [], 2, 3)
    @guest1 = Guest.new("Mark")
    @song1 = Song.new("Mardy Bum")
    @guest2 = Guest.new("Jeff")
    @guest3 = Guest.new("Jack")
  end

  def test_how_many_people_in_room
    assert_equal(2, @room1.guests.count)
  end

  def test_room_can_have_song
      @room1.room_gets_song(@song1)
      assert_equal(1, @room1.songs.count)
  end

  def test_room_can_have_guest
    @room1.room_gets_guest(@guest1)
    assert_equal(3, @room1.guests.count)
  end

  def test_guest_can_check_out
    @room1.guest_check_out()
    assert_equal(0, @room1.guests.count)
  end

  def test_check_capacity
    assert_equal(2, @room1.capacity)
  end

  def test_room_cant_have_more_than_capacity
      @room1.room_cant_have_more_than_capacity(@guest1)
      @room1.room_cant_have_more_than_capacity(@guest1)
    assert_equal(3, @room1.capacity)
  end

end
