class AddCommentsIdToLikes < ActiveRecord::Migration[5.1]
  def change
    add_column :likes, :comments_id, :integer
  end
end
