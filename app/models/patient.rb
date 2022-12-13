class Patient < ApplicationRecord
  has_many :pre_existing_conditions
  has_many :food_allergies
  has_many :drug_allergies
end
