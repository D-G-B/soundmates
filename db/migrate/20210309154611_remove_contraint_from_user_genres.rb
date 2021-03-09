class RemoveContraintFromUserGenres < ActiveRecord::Migration[6.0]
  def change
    change_column_null :user_genres, :genre_id, true
  end
end
