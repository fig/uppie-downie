class AddFavoritableTotalToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :favoritable_total, :text
  end
end
