require('minitest/autorun')
require('minitest/rg')
require_relative('../songs')


class TestGuests < Minitest::Test

  def setup
    @song1 = Song.new("There's a reson why")
    @song2 = Song.new("Supersonic")
  end

  def test_song_has_name
    assert_equal("Supersonic", @song2.name)
  end


end
