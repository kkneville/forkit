class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.references :item, index: true, foreign_key: true
      t.references :like, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
