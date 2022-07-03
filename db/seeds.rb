class Seed

  def self.begin
    seed = Seed.new
    seed.generate_animals
  end

  def generate_animals
    20.times do |i|
      animal = Animal.create!(
        name: Faker::Creature::Dog.name,
        age: Faker::Creature::Dog.age,
        breed: Faker::Creature::Dog.breed
      )
      puts "Animal #{i}: Name is #{animal.name}, age is #{animal.age}, and breed is #{animal.breed}."
    end
  end
end

Seed.begin
