require_relative "crop.rb"

class Wheat < Crop

  def initialize(crop, field_size)
    super(crop, field_size)
    @crop_yield = (@field_size * 30)
  end

  # READER
    def crop_yield
      @crop_yield
    end

    def crop
      @crop
    end

    def field_size
      @field_size
    end

end
