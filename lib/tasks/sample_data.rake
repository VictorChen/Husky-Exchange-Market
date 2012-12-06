namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Victor",
                         email: "victor.chen@uconn.edu",
                         password: "111111",
                         password_confirmation: "111111")
    admin.toggle!(:admin)
  end
end