module LectureRepository
  extend ActiveSupport::Concern

  included do
    scope :web, -> { order("created_at DESC") }
    scope :scheduled, -> { where(state: :in_schedule) }
  end
end

