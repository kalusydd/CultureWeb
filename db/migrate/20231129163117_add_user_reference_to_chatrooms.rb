class AddUserReferenceToChatrooms < ActiveRecord::Migration[7.1]
  def change
    def change
      add_reference :chatrooms, :user, foreign_key: true
    end
  end
end
