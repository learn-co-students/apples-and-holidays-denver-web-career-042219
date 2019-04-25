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
  # return the second element in the 4th of July array
  return holiday_supplies[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
      if holiday == :christmas || holiday == :new_years
        supplies << supply
      end
    end
  end
puts holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
      if holiday == :memorial_day
        supplies << supply
      end
    end
  end
  puts holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  puts holiday_hash
  return holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  return holiday_hash[:winter].values.flatten
end

## the issue is that it prints the season again before new years

#prints one long string but shovels at the end, causing and issue with doulbe winter


def all_supplies_in_holidays(holiday_hash)
  long_string = String.new

  holiday_hash.collect do |season, holiday|
  long_string << "#{season.to_s.capitalize}:\n"
    holiday.collect do |holiday, supply|
     if holiday.to_s.include?("_")
        holiday_array = Array.new
        holiday.to_s.split("_").collect do |word|
          holiday_array << word.capitalize!
        end
        long_string << "  #{holiday_array.join(" ")}: #{supply.join(", ")}\n"
      else
        long_string << "  #{holiday.to_s.capitalize}: #{supply.join(", ")}\n"
      end
    end
  end
  puts long_string
end




=begin
# try and shovel each word into a long string. I dont know what the fuck this was

def all_supplies_in_holidays(holiday_hash)
  long_string = String.new

  holiday_hash.collect do |season, holiday|
    long_string << "#{season.to_s.capitalize}: \n"
    puts long_string
    holiday.collect do |holiday, supply|
      if holiday.length > 1

        puts "#{holiday} +1 #{supply.to_s}"
      else
        puts "#{holiday} #{supply.to_s}"
      end
    end
  end
end

      ## check if ther eis more than one holiday
     if holiday.to_s.include?("_") # if the holiday is multi worded ; converting symbol to string
        holiday_string = String.new
        holiday.to_s.split("_").collect do |word| # split up the words and capitalie them, << to holiday_array
          holiday_string << "#{word.capitalize} "
          puts holiday_string
        end

        if supply.length > 1 # is the supply length longer than one?
          supply.collect do |supplies| # shovel each supply into holiday array
            holiday_string << "#{supplies}"
            puts holiday_string
          end
          long_string << holiday_string
          puts long_string
        else
          holiday_string << "#{supplies}"
          puts long_string
        end
        long_string << holiday_array.to_s
        puts long_string
      else
        holiday_string << "  #{holiday.to_s.capitalize}: \n" # if the holiday didnt have multiple words, shovel in the capitalize holiday
        puts holiday_string
        if supply.length > 1 # if the supp,y list is longer than one
          supply.collect do |supplies|
            holiday_string << "#{supplies}" # shovel in the supply one by one
            puts holiday_string
          end
          long_string << holiday_string
          puts long_string
        else
          long_string << "#{supplies}"
          puts long_string
        end
      end
    end
    puts long_string
  end
end
=end


=begin
        long_string << "#{season.to_s.capitalize}: \n  #{holiday_array.join(" ")}: #{supply.join(", ")}\n"
      else
        long_string << "#{season.to_s.capitalize}: \n  #{holiday.to_s.capitalize}: #{supply.join(", ")}\n"
      end
    end
  end
  puts long_string
end
=end







def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  item = "BBQ"
  bbq_holidays = Array.new
  holiday_hash.select do |season, holiday|
    if season != item
      holiday.collect do |holiday, supply|
        if holiday != item
          supply.collect do |supply|
            if supply == item
              bbq_holidays << holiday
            end
          end
        end
      end
      end
    end
    return bbq_holidays
  end




=begin

holiday_hash = {
      :winter => {
        :christmas => ["Lights", "Wreath"],
        :new_years => ["Party Hats"]
      },
      :summer => {
        :fourth_of_july => ["Fireworks", "BBQ"]
      },
      :fall => {
        :thanksgiving => ["Turkey"]
      },
      :spring => {
        :memorial_day => ["BBQ"]
      }
    }
=end
