require "pry"
require_relative "./song.rb"
require_relative "./genre.rb"



#
# /he Artist class needs a class variable @@all that begins as an empty array
# /An artist is initialized with a name and is saved in the @@all array.

class Artist

  attr_accessor :name, :genre, :song_names

  @@all =[]

  def initialize(name)
    @name = name
    @song_names = []
    @@all << self
  end

 # The Artist class needs a class method .all that lists each artist in the class variable
  def self.all
    @@all
  end

# The Artist class needs an instance method, #new_song, that takes in an argument of a name and genre creates a new song. That song should know that it belongs to the artist.
  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
  end

# The Artist class needs an instance method, #songs, that iterates through all songs and finds the songs that belong to that artist. Try using select to achieve this.
  def songs
    Song.all.select do |song_object|
      song_object.artist == self
    end
  end
  # The Artist class needs an instance method, #genres that iterates over that artist's songs and collects the genre of each song.
  def genres
    genres_array = []
    self.songs.each do |song_object|
      genres_array.push(song_object.genre)
    end
    genres_array.uniq
  end

end
