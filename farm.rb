require_relative 'corn.rb'
require_relative 'wheat.rb'
require 'pry'


class Farm

  @@fields_on_farm = []
  @@total_harvested = 0

  def initialize
    main_menu
  end

  #Main menu allows the user to select whether they want to field, harvest, relax, or exit.
  def main_menu
    while true
    puts "Options:"
    puts "[1] Add a new field of crops"
    puts "[2] Harvest crops"
    puts "[3] Relax and view fields"
    puts "[4] Exit"
    puts "Enter a Number"
    main_menu_opt = gets.chomp.to_i
      case main_menu_opt
      when 1 then field #will run field method
      when 2 then harvest #will run harvest method
      when 3 then relax #will run relax method
      else          exit
      end
    end
  end

# This method will prompt the user to enter which type of field they would like to create and the size
  def field
    puts "Which kind of field: corn or wheat?"
    field_opt = gets.chomp.to_s
    puts "How large is the field in hectares?"
    field_size = gets.chomp.to_i
    case field_opt
    when "corn" then
      new_corn_field = Corn.new(field_opt, field_size)
      @@fields_on_farm << new_corn_field
    when "wheat" then
      new_wheat_field << Wheat.new(field_opt, field_size)
      @@fields_on_farm << new_wheat_field
    else            exit
    end
    puts @@fields_on_farm.inspect
  end

# This method will collect food from all of the fields and record it.
  def harvest


    puts "Harvesting #{} food from #{} hectare corn field"
  end

# This method will output where the different crop field sizes and then the total harvested
  def status

    puts "#{} field is #{} hectare."

    puts "The farm has #{} harvested food so far."
  end

# This method is when the farmer relaxes. Should put out a sentence that describes the farm in detail to the user.
  def relax

  end





end


Farm.new
