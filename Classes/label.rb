require 'securerandom'
class label
    attr_accessor: title, :color

    def initialize(id, title, color)
        @id = SecureRandom.uuid
        @title = title
        @color = color
        @item = []
    end

end
