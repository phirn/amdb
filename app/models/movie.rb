class Movie < ActiveRecord::Base
  # A movie belongs to one director
  # A movie has many roles

  def director
    return Director.find_by_id(director_id)
  end
end
