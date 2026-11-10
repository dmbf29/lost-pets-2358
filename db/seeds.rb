puts "Cleaning the Db..."
Pet.destroy_all


puts "Creating pets..."
30.times do
  pet = Pet.new(
    name: Faker::Creature::Horse.unique.name,
    address: Faker::Address.street_address,
    species: Pet::SPECIES.sample,
    found_on: Date.today - rand(1..10),
  )
  pet.save!
  # .save! -> for the seeds
end
puts "... created #{Pet.count} pets."
