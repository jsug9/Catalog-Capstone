require_relative '../Classes/book'

describe Book do
  before :each do
    @book = Book.new('publisher', 'good', '1990-01-03')
  end
  describe '#new' do
    it 'is an instance of Book and takes 3 parameter' do
      expect(@book).to be_instance_of(Book)
    end
    it 'is a child of Item' do
      expect(@book).to be_kind_of(Item)
    end
  end
  describe '#initialize' do
    it 'should be initialized with publiher' do
      expect(@book.publisher).to eql('publisher')
    end
    it 'should be initialized with cover_state' do
      expect(@book.cover_state).to eql('good')
    end
  end
  describe '#move_to_archive' do
    it "should return true if the parent's method returns true" do
      new_book = @book
      expect(new_book.move_to_archive).to be true
    end
    it 'should return false otherwise' do
      new_book = Book.new('publisher', 'good', '2020-03-03')
      expect(new_book.move_to_archive).to be false
    end
  end
end
