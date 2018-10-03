class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def initialize(name, artist_name)
    @name = name
    @artist_name = artist_name
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
   # self.new.tap{ |song| song.save }
    song = self.new
    song.save
    song
  end
  
  def self.new_by_name
    #@@new_by_name = new_by_name
    #song = Song.new_by_name
  end
  
  def self.create_by_name
    @@create_by_name
  end
  
  def self.find_by_name(name)
    @@all.find { |song| song.name == name }
  end
  
  def self.find_or_create_by_name
    @@find_or_create_by_name
  end
  
  def self.alphabetical
    sorted = @@all.sort_by { |song| song.name }
    return sorted
  end
  
  def self.new_from_filename
    @@new_from_filename
  end
  
  def self.create_by_filename
    @@create_by_filename
  end
  
  def self.destroy_all
    @@all.clear
  end
end
