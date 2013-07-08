class HallType < Hall
  include BaseType

  permit :name, :state_event, slots_attributes: [:start_time, :finish_time, :_destroy, :id, :lecture_id]
end
