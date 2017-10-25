class RemoveLikeFromIngredient < ActiveRecord::Migration
  def change
    remove_column :ingredients, :like_id, :integer
  end
end
