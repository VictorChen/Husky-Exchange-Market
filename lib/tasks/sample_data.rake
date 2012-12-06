namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin1 = User.create!(name: "Victor",
                         email: "victor.chen@uconn.edu",
                         password: "111111",
                         password_confirmation: "111111")
    admin1.toggle!(:admin)
    admin2 = User.create!(name: "Nirav",
                         email: "nirav.kathrani@uconn.edu",
                         password: "111111",
                         password_confirmation: "111111")
    admin2.toggle!(:admin)
    admin3 = User.create!(name: "Linh",
                         email: "linh.nhan@uconn.edu",
                         password: "111111",
                         password_confirmation: "111111")
    admin3.toggle!(:admin)
    admin4 = User.create!(name: "Kraig",
                         email: "kraig.dandan@uconn.edu",
                         password: "111111",
                         password_confirmation: "111111")
    admin4.toggle!(:admin)
  end
end