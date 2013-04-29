class Movie < ActiveRecord::Base
  def director
    return Director.find_by_id(director_id)
  end
end
