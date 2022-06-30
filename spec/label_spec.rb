require_relative '../Classes/label'

describe Label do
  before :each do
    @label = Label.new('Book of the year', 'green')
  end
  it 'is an instance of Label and takes 2 parameters' do
    expect(@label).to be_instance_of(Label)
  end

  it 'should be initialized with title' do
    expect(@label.title).to eql('Book of the year')
  end

  it 'should be initialized with color' do
    expect(@label.color).to eql('green')
  end
  it 'gives error if more or less than 1 parameter as input' do
    expect { @label.add_item }.to raise_error(ArgumentError)
  end
end
