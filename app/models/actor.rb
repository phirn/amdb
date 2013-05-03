class Actor < ActiveRecord::Base
  has_many :roles

  validates :name, presence: true

  # def roles
  #   return Role.where(:actor_id => self.id)
  # end
end
