require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  name = ""
  data[season].each do |contestant_hash|
##    contestant_hash.each do |stat_key, stat_val|
##      binding.pry
      if contestant_hash["status"].include?("Winner")
        name.concat(contestant_hash["name"])
##      binding.pry
##      end
      end
end
name.split(" ")
name(1)
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
