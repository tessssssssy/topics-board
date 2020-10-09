class AddColumnsToTopic < ActiveRecord::Migration[6.0]
  def change
    add_column :topics, :title, :string
    add_column :topics, :description, :string
    add_column :topics, :image, :string
    add_column :topics, :fixed, :boolean, default: false, null: false
    add_column :topics, :archived, :boolean, default: false, null: false
  end
end
