class User < ActiveRecord::Base
  has_secure_password

  has_many :votes

  validates :username, presence: true, uniqueness: true
end
