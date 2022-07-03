FactoryBot.define do
  factory(:animal) do
    name {Faker::Creature::Dog.name}
    age {Faker::Creature::Dog.age}
    breed {Faker::Creature::Dog.breed}
  end
end