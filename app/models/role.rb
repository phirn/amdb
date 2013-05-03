class Role < ActiveRecord::Base
  belongs_to :actor
  belongs_to :movie

  validates :actor, presence: true
  validates :movie, presence: true
  validates :character_name, :presence => true

  # def actor
  #   return Actor.find_by_id(self.actor_id)
  # end

  # def movie
  #   return Movie.find_by_id(self.movie_id)
  # end
end
