admin = User.find_or_initialize_by(email: ENV['admin_email'])
admin.password = ENV['admin_password']
admin.password_confirmation = ENV['admin_password']
admin.admin = true
admin.save!

user = User.find_or_initialize_by(email: ENV['user_email'])
user.password = ENV['user_password']
user.password_confirmation = ENV['user_password']
user.save!
