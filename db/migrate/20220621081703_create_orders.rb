class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :email
      t.string :name
      t.string :phone
      t.text :shipping_address
      t.references :flag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
