class Role < ActiveRecord::Base
  # A role belongs to one actor
  # A role belongs to one movie

  def actor
    return Actor.find_by_id(self.actor_id)
  end

  def movie
    return Movie.find_by_id(self.movie_id)
  end
end
