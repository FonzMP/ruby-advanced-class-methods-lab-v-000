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
    self.all << x
    x
  end

  def self.new_by_name(title)
    x = self.new
    x.name = @name
    x
  end

  def self.create_by_name
    x = self.new
    x.name = @name
    self.all << x
    return x
  end

  def self.find_by_name
    @@all.each do |names|
      if names.name == @name
        return names
      end
    end
  end

  def self.find_or_create_by_name(title)
    if !find_by_name(title)
      create_by_name(title)
    else
      find_by_name(title)
    end
  end

end
