require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  name = ""
  data[season].each do |contestant_hash|
      if contestant_hash["status"].include?("Winner")
        name.concat(contestant_hash["name"])
      end
  end
  name_array = name.split(" ")
  name = name_array[0]
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |season,contestant_array|
    contestant_array.each do |con_hash|
      if con_hash["occupation"].include?(occupation)
        name.concat(con_hash["name"])
      end
    end
  end
name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season,contestant_array|
    contestant_array.each do |con_hash|
      if con_hash["hometown"].include?(hometown)
        count += 1
      end
    end
  end
count
end

def get_occupation(data, hometown)
  # code here
  occupation = ""
  data.each do |season,contestant_array|
    contestant_array.each do |con_hash|
      if con_hash["hometown"].include?(hometown)
        occupation.concat(con_hash["occupation"])
        return occupation
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data[season].each do |contestant_hash|
      ages.push(contestant_hash["age"].to_i)
      end
  average_age = (ages.reduce(:+).to_f / ages.size).round
end
