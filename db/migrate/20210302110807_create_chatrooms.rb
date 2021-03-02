class CreateChatrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :chatrooms do |t|
      t.string :status

      t.timestamps
    end
  end
end
