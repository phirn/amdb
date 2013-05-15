class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie

  validates :user, presence: true
  validates :movie, presence: true

  validates :user_id, uniqueness: { scope: :movie_id, message: "has already voted for that movie."
}
  validate :user_cannot_vote_more_than_three_times

  def user_cannot_vote_more_than_three_times
    if self.user.votes.count >= 3
      errors.add(:user_id, "has already voted three times")
    end
  end
end
