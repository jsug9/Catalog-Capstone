require_relative './item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state, id, publish_date)
    super(id, publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end
end
