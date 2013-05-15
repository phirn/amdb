class Movie < ActiveRecord::Base
  belongs_to :director
  has_many :roles
  has_many :actors, :through => :roles
  has_many :votes

  validates :title, presence: true
  validates :director, presence: true

  # def director
  #   return Director.find_by_id(self.director_id)
  # end

  # def roles
  #   return Role.where(:movie_id => self.id)
  # end
end
