require 'securerandom'
class Label
  attr_accessor :title, :color

  def initialize(_id, title, color)
    @id = SecureRandom.uuid
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item unless @items.inclue?(item)
    item.label(self)
  end
end
