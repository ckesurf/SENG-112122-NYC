# Creating users:
aisayo = User.create(username: "alex", email: "alex@123.com", password: '123')
bob_is_cool = User.create(username: 'bobiscool', email: 'bobiscool@123.com', password: '123')

10.times do 
  new_item = Faker::Appliance.equipment
  Item.create(
    # image_url: Faker::LoremFlickr.image(search_terms: [new_item]), 
    image_url: "https://loremflickr.com/300/300", 
    name: new_item,
    user: User.all.sample,
    price: Faker::Number.within(range: 1..1000)
  )
end
