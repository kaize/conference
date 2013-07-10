class LectureDecorator < Draper::Decorator
  delegate_all
  decorates_association :user

  def user_full_name
    user.full_name
  end
end
