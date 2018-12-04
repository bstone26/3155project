class AddLikeToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :like, :int
  end
end
