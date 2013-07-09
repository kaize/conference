class CreateAdminUserType < User
  include BaseType

  permit :email, :password, :password_confirmation, :first_name, :last_name, :state_event, :city, :company, :position, :about, :role, :show_as_participant, :admin

  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end

