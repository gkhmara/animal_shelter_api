require 'rails_helper'

describe Animal do
  it 'creates an animal' do
    animal = Animal.create(:name => "Fido", :age => "young", :breed => "cute")
    expect(animal.name).to eq "Fido"
  end
end