require 'securerandom'
require_relative 'item'

class Genre
  def initialize(name)
    @id = SecureRandom.uuid
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item unless @items.include?(item)
    item.add_genre(self) unless item.genres.include?(self)
  end
end
