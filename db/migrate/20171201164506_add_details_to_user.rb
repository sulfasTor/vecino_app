class AddDetailsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :street, :string
    add_column :users, :house_number, :integer
    add_column :users, :zip_code, :string
    add_column :users, :phone, :string
  end
end
