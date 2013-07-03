class LectureType < Lecture
  include BaseType

  permit :name
end
