class Actor < ActiveRecord::Base
  # An actor has many roles

  def roles
    return Role.where(:actor_id => self.id)
  end
end
