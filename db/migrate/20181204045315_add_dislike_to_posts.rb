class AddDislikeToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :dislike, :int
  end
end
