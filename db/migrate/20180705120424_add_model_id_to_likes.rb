class AddModelIdToLikes < ActiveRecord::Migration[5.1]
  def change
    add_column :likes, :model_id, :integer
  end
end
