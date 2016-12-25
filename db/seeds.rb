User.create!(last_name: "Example",
            first_name: "User",
            email: "example@railstutorial.org",
            password: "foobar",
            password_confirmation: "foobar",
            admin: true,
            activated: true,
            activated_at: Time.zone.now)
            
99.times do |n|
  last_name = Faker::Name.last_name
  first_name = Faker::Name.first_name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(last_name: last_name,
              first_name: first_name,
              email: email,
              password: password,
              password_confirmation: password,
              activated: true,
              activated_at: Time.zone.now)
end