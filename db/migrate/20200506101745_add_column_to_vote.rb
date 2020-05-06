class AddColumnToVote < ActiveRecord::Migration[6.0]
  def change
    add_column :votes, :number, :integer, default: 0, null: false
  end
end
