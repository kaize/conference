module LectureRepository
  extend ActiveSupport::Concern

  include UsefullScopes

  included do
    scope :web, -> { order("created_at DESC") }
    scope :scheduled, -> { where(state: :in_schedule) }
  end
end

