admin = User.find_or_initialize_by(email: "admin@undev.home")
admin.password = 123456
admin.password_confirmation = 123456
admin.admin = true
admin.save!

user = User.find_or_initialize_by(email: "user@undev.home")
user.password = 123456
user.password_confirmation = 123456
user.save!
