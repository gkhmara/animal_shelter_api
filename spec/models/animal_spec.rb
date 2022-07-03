require 'rails_helper'

describe Animal do
  it 'creates an animal' do
    animal = Animal.create(:name => "Fido", :age => "young", :breed => "cute")
    expect(animal.name).to eq "Fido"
  end
  it { should validate_presence_of :name }
  it { should validate_presence_of :age }
  it { should validate_presence_of :breed }
end