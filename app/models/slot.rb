class Slot < ActiveRecord::Base
  include SlotRepository

  belongs_to :hall
  belongs_to :lecture

  validates :start_time, presence: true
  validates :finish_time, presence: true
end
