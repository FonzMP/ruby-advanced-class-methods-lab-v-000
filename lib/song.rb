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
    x.name = @name
    x.artist_name = @artist_name
    @@all << x
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
    @@all << x
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
    @@all.each do |names|
      if names.name == title
        self.find_by_name(title)
      else
        create_by_name(title)
      end
    end
  end

end
