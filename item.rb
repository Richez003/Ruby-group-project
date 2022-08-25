class Item
    attr_accessor :published_date
    attr_reader :id, :archived, :author, :genre, :label

    def initialize(published_date)
        @id = Rand(1..1000)
        @archived = false
        @published_date = published_date
      end