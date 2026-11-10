class Pet < ApplicationRecord
  # associations
  # validations
  validates :found_on, presence: true
  SPECIES = [ "dog", "snake", "bird", "rat", "bat" ]
  validates :species, inclusion: { in: SPECIES }
end
# Pet::SPECIES
