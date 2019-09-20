class Guest

  attr_reader(:name, :wallet, :fave_song)

  attr_writer(:wallet)

  def initialize(name, wallet, fave_song)
    @name = name
    @wallet = wallet
    @fave_song = fave_song
  end
end
