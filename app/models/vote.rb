class Vote < ActiveRecord::Base
  attr_accessible :user_id, :movie_id

  belongs_to :user
  belongs_to :movie

  validates :user, presence: true
  validates :movie, presence: true

  validates :user_id, uniqueness: { scope: :movie_id, message: "has already voted for that movie."
}
  validate :user_cannot_vote_more_than_three_times

  after_save :bump_the_movies_number_of_votes
  after_destroy :reduce_the_movies_number_of_votes

  def bump_the_movies_number_of_votes
    m = self.movie
    m.number_of_votes += 1
    m.save
  end

  def reduce_the_movies_number_of_votes
    m = self.movie
    m.number_of_votes -= 1
    m.save
  end


  def user_cannot_vote_more_than_three_times
    if self.user.votes.count >= 3
      errors.add(:user_id, "has already voted three times")
    end
  end
end
