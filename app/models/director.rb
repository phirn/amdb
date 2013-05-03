class Director < ActiveRecord::Base
  has_many :movies

  validates :name, presence: true

  # def movies
  #   return Movie.where(:director_id => self.id)
  # end
end
