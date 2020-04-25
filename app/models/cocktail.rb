class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy, inverse_of: :cocktail
  has_many :ingredients, through: :doses
  accepts_nested_attributes_for :doses
end
