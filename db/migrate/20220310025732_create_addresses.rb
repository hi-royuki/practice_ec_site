class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|

      t.integer :customer_id, null: false
      t.string :name, null: false
      t.integer :postal_code, null: false
      t.string :prefecture_code, null: false
      t.string :city, null: false
      t.string :street, null: false
      t.string :other_address

      t.timestamps
    end
  end
end
