require 'pry'
require_relative 'song.rb'

class Genre

    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
       artists = songs.map {|song| song.artist}
       artists
    end

end
