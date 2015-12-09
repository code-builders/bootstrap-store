until Product.count >= 20
  product = Product.create(name: Faker::Commerce.product_name)
  product.product_options.create(name: Faker::Commerce.color, price_in_cents: (rand(100) + 5) * 100)
end

User.create(email: "bookis@example.com", password: "gogo", password_confirmation: "gogo")
