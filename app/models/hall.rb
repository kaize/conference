class Hall < ActiveRecord::Base
  include HallRepository

  has_many :slots, order: :start_time
  accepts_nested_attributes_for :slots, allow_destroy: true

  validates :name, presence: true
  validates_associated :slots

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
