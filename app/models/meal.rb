class Meal < ActiveRecord::Base
  belongs_to :mealplan
  belongs_to :user
  has_many :ingredients
  has_many :items, through: :ingredients
end
