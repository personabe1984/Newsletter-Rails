10.times do
  Magazine.create(name: Faker::Hipster.word, category: Faker::Hipster.sentence)
end

5.times do
  Person.create(name: Faker::Name.name, address: Faker::Address.full_address)
end

5.times do
  Subscription.create(delivery_date: Faker::Hipster.word, person: Person.all.sample, magazine: Magazine.all.sample)
end
