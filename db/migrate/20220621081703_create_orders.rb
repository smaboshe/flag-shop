class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :email
      t.string :name
      t.string :phone
      t.text :shipping_address

      t.timestamps
    end
  end
end
