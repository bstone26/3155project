class AddCommenterIdToReplies < ActiveRecord::Migration[5.2]
  def change
    add_column :replies, :commenter_id, :string
  end
end
