class Slot < ActiveRecord::Base
  include SlotRepository
  belongs_to :hall
  belongs_to :lecture
end
