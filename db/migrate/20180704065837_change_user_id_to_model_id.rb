class ChangeUserIdToModelId < ActiveRecord::Migration[5.1]
  def change
  	rename_column :posts, :user_id, :model_id
  end
end
