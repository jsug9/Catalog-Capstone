require './Classes/item'

describe Item do
  let(:item) { Item.new(12) }

  it 'should be an instance of Item' do
    expect(item).to be_an_instance_of(Item)
  end

  it 'should be initialized with a publish date' do
    expect(item.publish_date).to eq(12)
  end

  it 'should be initialized with an id' do
    expect(item.id).to be_a(String)
  end

  it 'should be initialized with an archived status' do
    expect(item.archived).to eq(false)
  end

  it 'should be able to check if it can be archived' do
    expect(item.can_be_archived?).to eq(true)
  end

  it 'should be able to be archived' do
    item.move_to_archive
    expect(item.archived).to eq(true)
  end
end
