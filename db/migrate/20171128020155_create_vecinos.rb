class CreateVecinos < ActiveRecord::Migration[5.1]
  def change
    create_table :vecinos do |t|
      t.string :name
      t.text :address
      t.string :phone

      t.timestamps
    end
  end
end
