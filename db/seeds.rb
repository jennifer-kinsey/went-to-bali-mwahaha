class Seed

  def self.begin
    seed = Seed.new
    seed.generate_products
  end

  def generate_products
    20.times do |i|
      Product.create!(name: Faker::Lorem.word, price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop, image: Faker::LoremPixel.image)
    end
  end

  User.create!(
    email: "admin@email.com",
    name: "admin",
    password: "000000",
    password_confirmation: "000000",
    admin: true,
  )
end


Seed.begin
