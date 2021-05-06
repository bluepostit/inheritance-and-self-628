require_relative 'building'

class Skyscraper < Building
  def floor_area
    super + 200
  end
end
