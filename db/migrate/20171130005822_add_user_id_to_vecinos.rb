class AddUserIdToVecinos < ActiveRecord::Migration[5.1]
  def change
    add_column :vecinos, :user_id, :integer
  end
end
