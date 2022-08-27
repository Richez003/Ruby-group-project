require_relative './item'

class Genre
  attr_accessor :name, :id
  attr_reader :items, :publish_date

  def initialize(name, publish_date)
    @id = Random.rand(1..1000)
    @name = name
    @publish_date = publish_date
    @items = []
  end

  def add_item(item)
    @items << item
    item.genre(self)
  end
end
