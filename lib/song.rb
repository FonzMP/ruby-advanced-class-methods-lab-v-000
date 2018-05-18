require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    x = self.new
    self.all << x
    x
  end

  def self.new_by_name(title)
    x = self.new
    x.name = title
    x
  end

  def self.create_by_name(title)
    checker = self.all.detect {|song| song.name == title}
    if !checker
      x = self.new
      x.name = title
      @@all << x
      x
    end
  end

  def self.find_by_name(title)
    song_found = ""
    @@all.each do |item|
      if title == item.name
        song_found = item
      end
    end
    song_found
  end

  def self.find_or_create_by_name(title)
    if find_by_name(title) == ""
      create_by_name
    else
      find_by_name
    end
  end

  def self.destroy_all
    @@all = []
  end

end
