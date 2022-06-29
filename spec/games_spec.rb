require_relative '../Classes/game.rb'

RSpec.describe Game do
  it 'should be a game' do
    game = Game.new('2006-06-03','Barbra', '2009-08-09', 'Barbie')
    expect(game.class).to eq(Game)
  end

  it 'should have a name' do
    game = Game.new('2006-06-03','Barbra', '2009-08-09', 'Barbie')
    expect(game.name).to eq('Barbie')
  end

  it ' should have a publish date' do
    game = Game.new('2006-06-03','Barbra', '2009-08-09', 'Barbie')
    expect(game.publish_date).to eq(Date.parse('2006-06-03'))
  end

  it 'should have a last_played_at date' do
    game = Game.new('2006-06-03','Barbra', '2009-08-09', 'Barbie')
    expect(game.last_played_at).to eq('2009-08-09')
  end

end