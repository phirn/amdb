class Actor < ActiveRecord::Base
  # An actor has many roles

  def roles
    # return an array of all the roles that belong to this actor
  end
end
