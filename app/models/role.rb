class Role < ActiveRecord::Base
  belongs_to :actor
  belongs_to :movie

  # def actor
  #   return Actor.find_by_id(self.actor_id)
  # end

  # def movie
  #   return Movie.find_by_id(self.movie_id)
  # end
end
