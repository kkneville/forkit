class AddColumnsToLike < ActiveRecord::Migration
  def change
    add_column :likes, :publisher, :string
    add_column :likes, :publisher_url, :string
    add_column :likes, :rank, :integer
    add_column :likes, :img, :string
  end
end
