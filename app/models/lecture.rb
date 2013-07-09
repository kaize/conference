class Lecture < ActiveRecord::Base
  belongs_to :user
  has_one :slot

  validates :name, presence: true
  validates :thesis, presence: true
  validates :user, presence: true

  state_machine :state, initial: :in_approve do
    state :in_approve
    state :in_schedule
    state :voted
    state :rejected

    event :move_to_schedule do
      transition [:in_approve, :voted, :rejected] => :in_schedule
    end

    event :move_to_voting do
      transition [:in_approve, :in_schedule, :rejected] => :voted
    end

    event :reject do
      transition [:in_approve, :in_schedule, :voted] => :rejected
    end
  end

  #NOTE: see user.rb
  include LectureRepository
end
