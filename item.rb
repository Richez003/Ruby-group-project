class Item
    attr_accessor :published_date
    attr_reader :id, :archived, :author, :genre, :label

    def initialize(published_date)
        @id = Rand(1..1000)
        @archived = false
        @published_date = published_date
      end

      def add_author=(author)
        @author = author  
        author.items.push(self) unless author.items.include?(self)
      end

      def add_genre=(genre)
        @genre = genre
        genre.items.push(self) unless genre.items.include?(self)
      end
    
      def add_label=(label)
        @label = label
        label.items.push(self) unless label.items.include?(self)
      end

      def move_to_archive
        @archived = true if can_be_archived?
      end
    
      private
    
      def can_be_archived?
        Date.new.year - @published_date > 10
      end
    end
    