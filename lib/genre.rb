class Genre

  extend Concerns::Findable

  attr_accessor :name, :songs
    @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    genre = self.new(name)
    genre.save
    genre
  end

  def add_song(song)
  @songs << song
  end

  def artists
    arr = self.songs.collect {|song| song.artist}
    arr.uniq
  end
end