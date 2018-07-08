class AddModelIdToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :model_id, :integer
  end
end
