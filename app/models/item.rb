class Item < ActiveRecord::Base
	has_many :ingredients, dependent: :destory
	has_many :meals, through: :ingredients
end
