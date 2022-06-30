require 'date'
require './Classes/music_album'

describe MusicAlbum do
  date = '1999-01-25'
  let(:music_album) { MusicAlbum.new(date, true) }

  it 'should be an instance of MusicAlbum' do
    expect(music_album).to be_an_instance_of(MusicAlbum)
  end

  it 'should be initialized with a publish date' do
    expect(music_album.publish_date).to eq(Date.parse(date))
  end

  it 'should be initialized with a on_spotify property' do
    expect(music_album.on_spotify).to eq(true)
  end

  it 'should be initialized with an id' do
    expect(music_album.id).to be_a(String)
  end

  it 'should be able to be archived' do
    music_album.move_to_archive
    expect(music_album.archived).to eq(true)
  end
end
