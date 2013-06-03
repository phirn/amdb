class Movie < ActiveRecord::Base
  attr_accessible :title, :year, :director_id

  belongs_to :director
  has_many :roles, :dependent => :destroy
  has_many :actors, :through => :roles
  has_many :votes

  validates :title, presence: true
  # validates :year, presence: true

  # def director
  #   return Director.find_by_id(self.director_id)
  # end

  # def roles
  #   return Role.where(:movie_id => self.id)
  # end
end
