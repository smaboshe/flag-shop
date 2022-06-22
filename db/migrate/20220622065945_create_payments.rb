class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.string :card_cvv
      t.string :card_expiry_month
      t.string :card_expiry_year
      t.string :card_name
      t.string :card_number
      t.string :currency
      t.string :medium
      t.string :processor
      t.string :status
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
