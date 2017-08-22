require_relative "crop.rb"

class Wheat < Crop

  def initialize(crop, field_size)
    super(crop, field_size)
    @harvest = (@field_size * 30)
  end

end
