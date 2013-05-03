class Actor < ActiveRecord::Base
  has_many :roles
  has_many :movies, :through => :roles

  validates :name, presence: true

  # def movies
  #   movies_array = []
  #   roles_array = self.roles
  #   roles_array.each do |role|
  #     movies_array << role.movie
  #   end
  #   return movies_array
  # end

  # def roles
  #   return Role.where(:actor_id => self.id)
  # end
end
