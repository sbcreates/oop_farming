require_relative "crop.rb"

class Corn < Crop

  def initialize(crop, field_size)
    super(crop, field_size)
    @harvest = (@field_size * 20)
  end

end
