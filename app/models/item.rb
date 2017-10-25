class Item < ActiveRecord::Base
	has_many :ingredients
	has_many :meals, through: :ingredients
end
