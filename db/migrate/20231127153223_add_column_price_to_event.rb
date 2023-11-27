class AddColumnPriceToEvent < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :price, :string
  end
end
