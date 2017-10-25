class Meal < ActiveRecord::Base
  belongs_to :mealplan
  belongs_to :user
  has_many :ingredients, dependent: :destroy
  has_many :items, through: :ingredients
end
