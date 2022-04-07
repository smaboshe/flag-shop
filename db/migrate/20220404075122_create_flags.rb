class CreateFlags < ActiveRecord::Migration[7.0]
  def change
    create_table :flags do |t|
      t.decimal :price            # Price of the flag in Zambian Kwacha
      t.string :country           # The country of the flag (e.g. "Zambia")
      t.string :country_code      # ISO 3166-1 alpha-3 codes are three-letter country codes - https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3
      t.string :currency_code     # Default to Zambian Kwacha (ZMW)
      t.string :image_url         # URL to an image of the flag (may add image uploads as a future feature)

      t.timestamps
    end
  end
end
