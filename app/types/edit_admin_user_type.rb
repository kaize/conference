class EditAdminUserType < User
  include BaseType

  permit :first_name, :last_name, :state_event, :city, :company, :position, :about, :role, :show_as_participant, :admin, :invisible_lector

  validates :first_name, presence: true
  validates :last_name, presence: true
end
