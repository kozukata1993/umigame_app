User.create!(username: "Test User",
             email: "test@example.com",
             password: "foobar",
             password_confirmation: "foobar")

99.times do |n|
  username = Faker::Name.name
  email = Faker::Internet.email
  password = "password"
  User.create!(username: username,
               email: email,
               password: password,
               password_confirmation: password)
end
