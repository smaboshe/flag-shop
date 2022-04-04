class CreateFlags < ActiveRecord::Migration[7.0]
  def change
    create_table :flags do |t|
      t.string :image_url
      t.string :country
      t.string :country_code
      t.decimal :price
      t.string :currency_code

      t.timestamps
    end
  end
end
