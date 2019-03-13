require 'pry'
# {
#   :winter => {
#     :christmas => ["Lights", "Wreath"],
#     :new_years => ["Party Hats"]
#   },
#   :summer => {
#     :fourth_of_july => ["Fireworks", "BBQ"]
#   },
#   :fall => {
#     :thanksgiving => ["Turkey"]
#   },
#   :spring => {
#     :memorial_day => ["BBQ"]
#   }
# }


def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end


def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies.push(supply)
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
end


def all_winter_holiday_supplies(holiday_hash)
  all_supplies = []
  
  holiday_hash[:winter].each do |holiday, supplies|
    all_supplies.concat(supplies)
  end
  
  all_supplies
end

<<<<<<< HEAD

def all_supplies_in_holidays(holiday_hash)
  final_str = ""

  holiday_hash.each do |season, holidays|
    season_str = season.capitalize.to_s
    final_str += "#{season_str}:\n"
=======

def all_supplies_in_holidays(holiday_hash)
  final_str = ""

  holiday_hash.each do |season, holidays|
    season_str = season.capitalize.to_s
    final_str += "#{season_str}:\n"

    holidays.each do |holiday, supplies|
      holiday_name = holiday.to_s.split("_").collect{|x| x.capitalize}.join(" ")

      # holiday_name.each do |x|
      #   x.capitalize!
      # end
      
      # holiday_name = holiday_name.join(" ")

      holiday_str = "\t#{holiday_name}: "

      for supply in supplies
        holiday_str += "#{supply}, "
      end
      
      holiday_str = holiday_str[(0..-3)]  + "\n"
      final_str += holiday_str
    end
  end

  puts final_str
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
>>>>>>> deb5d61f030267177054b3351f1d621173cdf751

    holidays.each do |holiday, supplies|
      holiday_name = holiday.to_s.split("_")

      holiday_name.each do |x|
        x.capitalize!
      end
      
      holiday_name = holiday_name.join(" ")

      holiday_str = "  #{holiday_name}: "

      for supply in supplies
        holiday_str += "#{supply}, "
      end
      
      holiday_str = holiday_str[(0..-3)]  + "\n"
      final_str += holiday_str
    end
  end

  puts final_str
end


def all_holidays_with_bbq(holiday_hash)
  holiday_list = []
  
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        holiday_list.push(holiday)
      end
    end
  end
  
  holiday_list
end