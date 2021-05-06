require_relative 'building'

class Castle < Building
  def add_butler(butler)
    @butler = butler
  end

  def has_a_butler?
    !@butler.nil?
  end

  def self.categories
    ['Norman', 'Crusader', 'Ottoman', 'English']
  end
end
