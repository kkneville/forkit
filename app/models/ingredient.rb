class Ingredient < ActiveRecord::Base
  belongs_to :item
  belongs_to :meal
end
