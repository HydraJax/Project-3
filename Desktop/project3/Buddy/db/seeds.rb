user = User.create!(email: "smackie@shmoe.com", password: 12345678, password_confirmation: 12345678)


5.times do
  user.events.create(event_name: Forgery(:lorem_ipsum).words(2, :random =>true), description: Forgery(:lorem_ipsum).words(2, :random =>true),address: Forgery(:lorem_ipsum).words(2, :random =>true),date: Forgery(:lorem_ipsum).words(5, :random =>true), time: Forgery(:lorem_ipsum).words(5, :random =>true))
end