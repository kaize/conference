class HallType < Hall
  include BaseType

  permit :name, slots_attributes: [:start_time, :finish_time, :_destroy, :id]
end
