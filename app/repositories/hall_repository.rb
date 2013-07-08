module HallRepository
  extend ActiveSupport::Concern

  included do
    scope :web, -> { order("created_at DESC") }
  end
end
