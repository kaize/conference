class LectureType < Lecture
  include BaseType

  permit :name, :thesis, :user_id, :state_event

  validates :name, presence: true
  validates :thesis, presence: true
  validates :user, presence: true
end
