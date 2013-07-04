class User < ActiveRecord::Base
  include UserRepository

  has_secure_password
  has_many :lectures

  validates :email, uniqueness: true, presence: true, email: true
end
