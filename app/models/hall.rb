class Hall < ActiveRecord::Base
  include HallRepository

  has_many :slots, order: :start_time
  accepts_nested_attributes_for :slots, allow_destroy: true

  validates :name, presence: true
  validates_associated :slots
end
