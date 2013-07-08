class User < ActiveRecord::Base
  include UserRepository
  extend Enumerize

  has_secure_password
  has_many :lectures

  validates :email, uniqueness: true, presence: true, email: true

  enumerize :role, in: [ :lector, :user ], default: :user

  state_machine :state, initial: :active do
    state :active
    state :inactive

    event :activate do
      transition [:inactive] => :active
    end

    event :deactivate do
      transition [:active] => :inactive
    end
  end
end
