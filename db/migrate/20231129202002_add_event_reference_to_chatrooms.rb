class AddEventReferenceToChatrooms < ActiveRecord::Migration[7.1]
  def change
    add_reference :events, :chatroom, foreign_key: true
  end
end
