class AddColumnsToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :title, :string
    add_column :meals, :source, :string
    add_column :meals, :img, :string
    add_column :meals, :publisher, :string
    add_column :meals, :publisher_url, :string
    add_column :meals, :rank, :integer
  end
end
