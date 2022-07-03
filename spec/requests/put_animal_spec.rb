require 'rails_helper'

describe 'update a animal', :type => :request do

  before do
    post '/animals', params: { :name => 'test_name', :age => 'test_age', :breed => 'test_breed' }
    @animal_id = JSON.parse(response.body)['id']
    put "/animals/#{@animal_id}", params: { :name => 'Poochy', :age => 'young', :breed => 'goat' }
    get "/animals/#{@animal_id}"
  end

  it 'updates the name' do
    expect(JSON.parse(response.body)['name']).to eq('Poochy')
  end

  it 'update the age' do
    expect(JSON.parse(response.body)['age']).to eq('young')
  end

  it 'update the breed' do
    expect(JSON.parse(response.body)['breed']).to eq('goat')
  end

end