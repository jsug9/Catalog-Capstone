require_relative 'item'

class MusicAlbum < Item
  def initialize(genre, author, source, label, publish_date, on_spotify)
    super(genre, author, source, label, publish_date)
    @on_spotify = on_spotify
  end
end
