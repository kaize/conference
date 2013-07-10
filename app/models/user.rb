class User < ActiveRecord::Base
  extend Enumerize

  has_secure_password
  has_many :lectures

  validates :email, uniqueness: true, presence: true, email: true

  enumerize :role, in: [ :lector, :user ], default: :user, predicates: {only: :lector}

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

  #NOTE include after state_machine for scopes generate
  include UserRepository
end
