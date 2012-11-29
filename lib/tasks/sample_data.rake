namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Victor",
                 email: "victor.chen@uconn.edu",
                 password: "123456",
                 password_confirmation: "123456")
    users = User.all(limit: 6)
    50.times do
      name = "Faker::Lorem.sentence(5)"
      price = 5
      description = "kfljklsjlkfj"
      category = "Tickets"
      users.each { |user| user.products.create!(name: name, price: price, description: description, category: category) }
    end
  end
end