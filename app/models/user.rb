class User < ActiveRecord::Base
  attr_accessible :username, :password, :password_confirmation

  has_secure_password

  has_many :votes

  validates :username, presence: true, uniqueness: true

  before_create :lowercase_username

  def lowercase_username
    self.username = self.username.downcase
  end
end
