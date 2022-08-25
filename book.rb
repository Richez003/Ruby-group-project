require './item'

class Book < Item
  super

  publisher
  cover_state

  def can_be_archived?

  end
end