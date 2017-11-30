class CreateVecinos < ActiveRecord::Migration[5.1]
  def change
    create_table :vecinos do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :street
      t.integer :house_number
      t.string :phone
      t.integer :zip_code

      t.timestamps
    end
  end
end
