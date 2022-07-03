class AnimalsController < ApplicationController
  
  def index
    @animals =  Animal.paginate(page: params[:page], per_page: 5)
    json_response(@animals)
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create!(animal_params)
    json_response(@animal, :created)
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update!(animal_params)
      render status: 200, json: {
        message: "This animal has been successfully updated."
      }
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    if @animal.destroy!
      render status: 200, json: {
        message: "You have destroyed the entry. Congratulations!"
      }
    end
end

  def animal_params
    params.permit(:name, :age, :breed)
  end

end