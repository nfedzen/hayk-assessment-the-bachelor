require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].find do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |current_season, contestants|
    contestants.find do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |current_season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.find do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total = 0
  ages = data[season].reduce(0) do |sum_of_ages, contestant|
        total += 1
        sum_of_ages += contestant["age"].to_f
    end
  average_age = ages / total
  average_age.round
end


