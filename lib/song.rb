require "pry"
require_relative "./genre.rb"
require_relative "./artist.rb"

# The Song model:
#
# The Song class needs a class variable @@all that begins as an empty array.
# The Song class needs a class method .all that lists each artist in the class variable.
# /A song should be initialized with a name, an artist, and a genre, and be saved in the @@all array.
class Song
  attr_accessor :name, :genre, :artist 

  @@all =[]

  def initialize(name, a_Artist, a_Genre)
    @name = name
    @artist = a_Artist
    @genre = a_Genre
    @@all << self
  end


  def self.all
    @@all
  end


end
