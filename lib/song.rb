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
    self.all.detect{|songs| songs.name == title}
  end

  def self.find_or_create_by_name(title)
    if create_by_name(title).nil?
      find_by_name(title)
    else
      create_by_name(title)
  end

  def self.destroy_all
    @@all = []
  end

end
