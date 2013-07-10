class HallDecorator < Draper::Decorator
  delegate_all

  def slots_count
    slots.count
  end
end
