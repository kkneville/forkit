class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :title
      t.integer :recipe_id

      t.timestamps null: false
    end
  end
end
