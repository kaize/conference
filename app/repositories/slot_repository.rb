module SlotRepository
  extend ActiveSupport::Concern

  include UsefullScopes

  included do
    scope :web, -> { order("start_time DESC") }
  end
end
