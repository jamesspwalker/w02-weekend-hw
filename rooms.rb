class Room

  attr_reader :guests, :songs


  def initialize(guests, songs)
    @guests = guests
    @songs = songs
  end

  def room_gets_song(song)
    @songs.push(song)
  end


end
