class AddColumnToUserChat < ActiveRecord::Migration[6.0]
  def change
    add_column :user_chats, :requestor, :boolean
  end
end
