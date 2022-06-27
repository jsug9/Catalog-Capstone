require 'securerandom'

class Item
  attr_accessor :id, :genre, :author, :source, :label, :publish_date, :archived

  def initialize(genre, author, source, label, publish_date, archived)
    @id = SecureRandom.uuid
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = archived
  end
end
