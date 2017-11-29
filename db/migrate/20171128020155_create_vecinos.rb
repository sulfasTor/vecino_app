class CreateVecinos < ActiveRecord::Migration[5.1]
  def change
    create_table :vecinos do |t|
      t.string :name
      t.string :phone
      t.string :street
      t.integer :house_number
      t.integer :zip_code
      
      t.timestamps
    end
  end
end
