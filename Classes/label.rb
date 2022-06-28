require 'securerandom'
class label
    attr_accessor: title, :color

    def initialize(id, title, color)
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
