require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')
require_relative('../karaoke_bar')
require_relative('../rooms')
require_relative('../songs')


class TestGuests < Minitest::Test

  def setup
    @karaoke_bar = Karaoke_bar.new("Musical Chairs", [@room1, @room2], [@song1, @song2])
    @room1 = Room.new()
    @room2 = Room.new()
    @guest1 = Guest.new("Mark")
    @guest2 = Guest.new("Felipe")
    @song1 = Song.new("There's a reson why")
    @song2 = Song.new("Supersonic")

  end

  def test_bar_has_name
    assert_equal("Musical Chairs", @karaoke_bar.name)
  end


end
