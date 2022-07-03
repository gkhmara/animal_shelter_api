require 'rails_helper'

describe "delete animal route", :type => :request do
  
  before do
    post '/animals', params: { :name => 'test_name', :age => 'test_age', :breed => 'test_breed' }
    @animal_id = JSON.parse(response.body)['id']
    delete "/animals/#{@animal_id}"
  end

  it 'returns a success status' do
    expect(response).to have_http_status(:success)
  end


end