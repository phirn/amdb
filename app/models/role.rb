class Role < ActiveRecord::Base
  # A role belongs to one actor
  # A role belongs to one movie

  def actor
    # return the Actor object this role belongs to
  end

  def movie
    # return the Movie object this role belongs to
  end
end
