class RemoveUserIdToVecinos < ActiveRecord::Migration[5.1]
  def change
    remove_column :vecinos, :user_id, :integer
  end
end
