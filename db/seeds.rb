
admin = User.create({
    username: "admin",
    password: "password",
    password_confirmation: "password",
    about: "About the Admin",
    admin: true
  })

user = User.create({
    username: "user",
    password: "password",
    password_confirmation: "password",
    about: "About the Basic user",
  })

disabled_user = User.create({
    username: "disabled_user",
    password: "password",
    password_confirmation: "password",
    about: "About the disabled user",
    disabled: true
  })

[admin, user, disabled_user].each do |u|
  puts "created user: #{u.attributes.inspect}"
end

