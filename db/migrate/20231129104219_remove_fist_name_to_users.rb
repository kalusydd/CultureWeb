class RemoveFistNameToUsers < ActiveRecord::Migration[7.1]
  def change
    def change
      remove_column :users, :first_name, :string
    end
  end
end
