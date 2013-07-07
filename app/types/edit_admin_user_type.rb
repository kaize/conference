class EditAdminUserType < User
  include BaseType

  permit :email, :first_name, :last_name, :state_event, :city, :company, :position, :about, :role, :show_as_participant, :admin

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :city, presence: true
  validates :company, presence: true
  validates :position, presence: true
  validates :about, presence: true
end
