class ConvertCapacityColumnIntoString < ActiveRecord::Migration[7.1]
  def change
    remove_column :events, :capacity, :integer
    add_column :events, :capacity, :string
  end
end
