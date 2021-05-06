class Castle
  attr_reader :name, :butler

  def initialize(name)
    @name = name
    @butler = Butler.new(self) # We need to pass the current instance of House
  end
end


class Butler
  def initialize(castle)
    @castle = castle # We want @castle to store an instance of castle
  end

  def clean_castle
    puts "#{@castle.name} cleaned!"
  end
end

my_castle = Castle.new('MyCastle')
my_castle.butler.clean_castle
