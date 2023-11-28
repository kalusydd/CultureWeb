class RevertCategoryIntegerInEvents < ActiveRecord::Migration[7.1]
  def change
    remove_column :events, :capacity, :string
    add_column :events, :capacity, :integer
  end
end
