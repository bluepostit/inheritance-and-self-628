class Palace
  def initialize(name, ruler)
    @name, @ruler = name, ruler
  end

  def palace_details
    "#{@name} is ruled by #{self.ruler_name}"
  end

  def ruler_name
    @ruler.capitalize
  end
end

dragonstone = Palace.new("Dragonstone", "targaryen")
puts dragonstone.palace_details # => "Dragonstone is ruled by Targaryen"
