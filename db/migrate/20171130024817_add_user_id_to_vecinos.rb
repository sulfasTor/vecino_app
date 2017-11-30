class AddUserIdToVecinos < ActiveRecord::Migration[5.1]
  def change
    add_reference :vecinos, :user, foreign_key: true
  end
end
