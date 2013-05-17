class Director < ActiveRecord::Base
  attr_accessible :name, :dob

  has_many :movies

  validates :name, presence: true

  # def movies
  #   return Movie.where(:director_id => self.id)
  # end
end
