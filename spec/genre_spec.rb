require './Classes/genre'
require './Classes/item'

describe Genre do
  let(:genre) { Genre.new('Rock') }

  it 'should be an instance of Genre' do
    expect(genre).to be_an_instance_of(Genre)
  end

  it 'should be initialized with a name' do
    expect(genre.name).to eq('Rock')
  end

  it 'should be initialized with an id' do
    expect(genre.id).to be_a(String)
  end

  it 'should be initialized with an empty array of items' do
    expect(genre.items).to eq([])
  end

  it 'should be able to add an item' do
    item = Item.new('2018-01-01')
    genre.add_item(item)
    expect(genre.items).to eq([item])
  end
end
