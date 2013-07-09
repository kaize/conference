admin = User.find_or_initialize_by(email: ENV['admin_email'])
admin.password = ENV['admin_password']
admin.password_confirmation = ENV['admin_password']
admin.name = "Admin user"
admin.first_name = "Админ"
admin.last_name = "Админов"
admin.company = "Компания"
admin.position = "Позиция"
admin.city = "Ульяновск"
admin.about = "О себе"
admin.admin = true
admin.save!

user = User.find_or_initialize_by(email: ENV['user_email'])
user.password = ENV['user_password']
user.password_confirmation = ENV['user_password']
user.name = "User"
user.first_name = "Админ"
user.last_name = "Админов"
user.company = "Компания"
user.position = "Позиция"
user.city = "Ульяновск"
user.about = "О себе"
user.save!
