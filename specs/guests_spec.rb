require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')


class TestGuests < Minitest::Test

  def setup
    @guest1 = Guest.new("Mark")
  end

  def test_guest_has_name
    assert_equal("Mark", @guest1.name)
  end

end
