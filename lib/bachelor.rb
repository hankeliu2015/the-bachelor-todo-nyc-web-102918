require 'pry'

def get_first_name_of_season_winner(data, season) # review the index i.
  winner_first_name = ""

  data.each do |seasons, season_data|
    if seasons == season
      season_data.each do |contestants_data|
        i = 0
        contestants_data.each do |key, value|
          if value == "Winner"
            winner_first_name = data[seasons][i]["name"].split(" ").first
            i += 1    # array contain ladies_data. Need to find the array index.
          end
        end
      end
    end
  end
  winner_first_name
end


def get_contestant_name(data, occupation)
  name = ""
  data.each do |seasons, season_data|
      i = 0   #consultant_data is an big array. need [index] then get to ["name"]
      season_data.each do |contestants_data|
        contestants_data.each do |key, value|
          if value == occupation
            name = data[seasons][i]["name"]
          end
        end
        i += 1
      end
  end
  name
end


def count_contestants_by_hometown(data, hometown)
  i = 0
  data.each do |seasons, season_data|
      season_data.each do |contestants_data|
        contestants_data.each do |key, value|
          if value == hometown
            i += 1
          end
        end
      end
  end
  i
end


def get_occupation(data, hometown)
  occupation = ""

  data.each do |seasons, season_data|

      season_data.each do |contestants_data|
        contestants_data.each do |key, value|
          if value == hometown
              #binding.pry
            return contestants_data["occupation"] # the occupation = not working.
          end
        end

      end
  end

# occupation not working for some reason. Has to put return inside the loop.
end


def get_average_age_for_season(data, season)
  average = 0
  total_age = 0
  i = 0
  #binding.pry

  data[season].each do |contestants_data|

          total_age += (contestants_data["age"]).to_i
          i += 1


  end

  (total_age/i.to_f).round(0)

end
