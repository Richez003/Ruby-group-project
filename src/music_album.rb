require_relative './item'

class MusicAlbum < Item
  attr_accessor :on_spotify, :name
  attr_reader :items

  def initialize(name, publish_date, on_spotify)
    super(publish_date)
    @id = Random.rand(1..1000)
    @name = name
    @on_spotify = on_spotify
    @items = []
  end

  def can_be_archived?
    super && @on_spotify
  end
end
