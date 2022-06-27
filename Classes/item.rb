require 'securerandom'

class Item
  attr_accessor :id, :genre, :author, :source, :label, :publish_date, :archived

  def initialize(genre, author, source, label, publish_date)
    @id = SecureRandom.uuid
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = false
  end

  def can_be_archived()
    if @published_date > 10
      return true
    else 
      return false
    end
  end

  def move_to_archive()
    @archive = can_be_archived?
  end
end

