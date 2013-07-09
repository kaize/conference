class UserDecorator < Draper::Decorator
  delegate_all

  def full_name
    "#{last_name} #{first_name}"
  end
end
