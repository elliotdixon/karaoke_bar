class Room

  attr_reader(:name, :capacity, :entry_fee, :till, :guests, :songs)

  attr_writer(:entry_fee, :funds, :guests)

  def initialize(name, capacity, entry_fee, till = 0, guests = [], songs = [])
    @name = name
    @capacity = capacity
    @entry_fee = entry_fee
    @till = till
    @guests = guests
    @songs = songs
  end

  def check_guest_in(guest)
    return if @guests.count >= @capacity
    return if guest.wallet < @entry_fee
    @guests.push(guest)
    guest.wallet -= @entry_fee
    @till += @entry_fee
  end

  def check_guest_out(guest)
    @guests.delete(guest)
  end

  def add_song(song)
    @songs.push(song)
  end

end
