class CreateAdminUserType < User
  include BaseType

  permit :email, :password, :password_confirmation, :first_name, :last_name, :state_event, :city, :company, :position, :about, :role, :show_as_participant, :admin
  validates :password, :password_confirmation, :first_name, :last_name, :city, :company, :position, :about, presence: true
end

