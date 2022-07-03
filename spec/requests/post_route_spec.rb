require 'rails_helper'

describe "post a animal route", :type => :request do
  
  before do
    post '/animals', params: { :name => 'test_name', :age => 'test_age', :breed => 'test_breed' }
  end

  it 'returns the animal name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the animal age' do
    expect(JSON.parse(response.body)['age']).to eq('test_age')
  end

  it 'returns the animal breed' do
    expect(JSON.parse(response.body)['breed']).to eq('test_breed')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

end