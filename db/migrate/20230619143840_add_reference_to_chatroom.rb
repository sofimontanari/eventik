class AddReferenceToChatroom < ActiveRecord::Migration[7.0]
  def change
    add_reference :chatrooms, :estimation, foreign_key: true
  end
end
