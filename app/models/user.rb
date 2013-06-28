class User < ActiveRecord::Base
  include UserRepository

  has_secure_password

  validates :email, uniqueness: true, presence: true, email: true
end
