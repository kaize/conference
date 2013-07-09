module HallRepository
  extend ActiveSupport::Concern

  include UsefullScopes

  included do
    scope :web, -> { order("created_at DESC") }
  end
end
