class Patient < ApplicationRecord
  has_many :food_allergies
  has_many :drug_allergies
end
