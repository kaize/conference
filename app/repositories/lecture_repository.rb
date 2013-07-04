module LectureRepository
  extend ActiveSupport::Concern

  include UsefullScopes

  included do
    scope :web, -> { asc_by_created_at }
    scope :scheduled, -> { where(state: :in_schedule) }
  end
end

