require "pry"
require_relative "./song.rb"
require_relative "./artist.rb"


# The Genre model:
#
# /The Genre class needs a class variable @@all that begins as an empty array.

# /A genre should be initialized with a name and be saved in the @@all array.
# The Genre class needs an instance method, #new_song, that takes in an argument of a name and an artist and creates a new song. That song should know that it belongs to the genre.
# The Genre class needs an instance method, #songs, that iterates through all songs and finds the songs that belong to that genre.
# The Genre class needs an instance method, #artists, that iterates over the genre's collection of songs and collects the artist that owns each song.


class Genre

  attr_accessor :name, :artist, :song

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end



  def new_song(name, a_Artist)
    new_song = Song.new(name, a_Artist, self)
    self.artist = a_Artist
  end

  def songs
    Song.all.select {|song_object| song_object.genre == self}

  end

  def artists
    artists_array = []
    self.songs.each {|song_object| artists_array.push(song_object.artist)}

    artists_array.uniq
  end


# The Genre class needs a class method .all that lists each artist in the class variable.
  def self.all
    @@all.collect {|genre_type| genre_type.artist.name}
  end












end
