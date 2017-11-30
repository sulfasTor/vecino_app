class CreateVecinos < ActiveRecord::Migration[5.1]
  def change
    create_table :vecinos do |t|
      t.string :name
      t.string :street
      t.integer :house_number
      t.string :phone
      t.integer :zip_code

      t.timestamps
    end
  end
end
