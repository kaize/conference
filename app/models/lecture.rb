class Lecture < ActiveRecord::Base
  include LectureRepository

  belongs_to :user
  has_one :slot

  validates :name, presence: true
  validates :thesis, presence: true
  validates :user, presence: true

  mount_uploader :presentation, LecturePresentationUploader
  validate :presentation, presence: true

  state_machine :state, initial: :new do
    state :new
    state :in_schedule
    state :voted
    state :rejected

    event :move_to_schedule do
      transition [:new, :voted, :rejected] => :in_schedule
    end

    event :move_to_voting do
      transition [:new, :in_schedule, :rejected] => :voted
    end

    event :reject do
      transition [:new, :in_schedule, :voted] => :rejected
    end
  end
end
