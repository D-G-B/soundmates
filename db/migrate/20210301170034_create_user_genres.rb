class CreateUserGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :user_genres do |t|
      t.references :user, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
