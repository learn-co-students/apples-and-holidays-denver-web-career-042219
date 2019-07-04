require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
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
  return holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, value|
    holiday_hash[season].each do |holiday, item|
    holiday_hash[season][holiday]<< supply
end
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |key, value|
    holiday_hash[key].each do |holiday, item|
    holiday_hash[key][holiday]<< supply
end
end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name]= supply_array
return holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)
   supplies=[]
    holiday_hash[:winter].each do |holiday, supply|
      supplies<< supply
end
return supplies.flatten
end






def all_supplies_in_holidays(holiday_hash)
  
  holiday_hash.each do |season, holidays|
    puts (season.to_s).capitalize!+":"
      holidays.each do |holiday, items|
            new_holiday_two = []
            new_array = items.map{|item| item}
            new_holiday = (holiday.to_s).split("_")
            new_holiday.each do |word|
              new_holiday_two<< word.capitalize!
            end
          puts "  "+ new_holiday_two.join(" ") +": " + new_array.join(", ")
          
      end
end
end








def all_holidays_with_bbq(holiday_hash)
holiday_names=[]
    holiday_hash.each do |season, holiday|
      holiday.each do |name, supplies|
       if supplies.include?"BBQ"
         holiday_names<< name
end
end
end
return holiday_names

end








