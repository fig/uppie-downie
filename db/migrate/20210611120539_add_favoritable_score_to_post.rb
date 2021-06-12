class AddFavoritableScoreToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :favoritable_score, :text
  end
end
