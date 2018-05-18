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
    x = self.new
    x.name = title
    self.all << x
    x
  end

  def self.find_by_name(title)
    @@all.each do |names|
      if names.name == title
        return names
      end
    end
  end

  def self.find_or_create_by_name(title)
    @@all.each do |item|
      if item.name == title
        find_by_name(title)
  end

  def self.destroy_all
    @@all = []
  end

end
