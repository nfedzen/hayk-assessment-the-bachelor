require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  
  data.each do |key, value|
    if key == season
      value.each do |contestant|
        if contestant["status"] == "Winner"
          return contestant["name"].partition(" ").first
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |key,value|
    value.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |key, value|
    value.each do |contestant|
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
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  counter = 0
  ages = 0
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |contestant|
        ages += contestant["age"].to_f
        counter += 1
      end
    end
  end
  
  average_age= ages / counter
  average_age.round
end
