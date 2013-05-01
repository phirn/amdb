class Movie < ActiveRecord::Base
  # A movie belongs to one director
  # A movie has many roles

  def director
    return Director.find_by_id(director_id)
  end

  def roles
    return Role.where(:movie_id => self.id)
  end
end
