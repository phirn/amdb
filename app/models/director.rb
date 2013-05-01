class Director < ActiveRecord::Base
  # A director has many movies

  def movies
    return Movie.where(:director_id => self.id)
  end
end
