class LectureType < Lecture
  include BaseType

  permit :name, :thesis, :user_id, :state_event
end
