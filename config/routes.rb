Rails.application.routes.draw do
  # verb '/path', to: 'controller#action', as: :prefix
  # see all the lost pets
  get "/pets", to: "pets#index", as: :pets
  # add a pet
  # form
  get "/pets/new", to: "pets#new", as: :new_pet
  # create the instance
  post "/pets", to: "pets#create" # it already has one (pets_path POST)
  # see one lost pet information
  get "/pets/:id", to: "pets#show", as: :pet
  # remove the pet when it was returned
  delete "/pets/:id", to: "pets#destroy" # it already has one (pet_path)
end
