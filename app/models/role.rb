class Role < ActiveRecord::Base
  # belongs to actor
  # belongs to movie

  def actor
    return Actor.find_by_id(self.actor_id)
  end

  def movie
    return Movie.find_by_id(self.movie_id)
  end
end
