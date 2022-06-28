require_relative './item'

class Book < Item
  attr_accessor :publisher, :cover_state, :id

  def initialize(publisher, cover_state, publish_date)
    super(publish_date)
    @id = SecureRandom.uuid
    @publisher = publisher
    @cover_state = cover_state
  end
end
