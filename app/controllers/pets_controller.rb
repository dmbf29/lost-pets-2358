class PetsController < ApplicationController
  # /pets
  def index
    @pets = Pet.all
  end

  # /pets/1
  def show
    @pet = Pet.find(params[:id])
  end

  # /pets/new
  def new
    # this is just for the form. what does the form builder need?
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      # if it doesnt save, show the form view again
      render "new", status: :unprocessable_entity
    end
  end

  # have to click on a DELETE link to get here => /pets/1
  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path, status: :see_other
  end

  private

  def pet_params
    # strong params -> filtered the form inputs from the user
    params.require(:pet).permit(:name, :address, :species, :found_on)
  end
end
