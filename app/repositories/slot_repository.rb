module SlotRepository
  extend ActiveSupport::Concern

  included do
    scope :web, -> { order("start_time DESC") }
  end
end
