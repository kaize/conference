module SlotRepository
  extend ActiveSupport::Concern

  include UsefullScopes

  included do
    scope :web, ->{ asc_by_start_time }
  end
end
