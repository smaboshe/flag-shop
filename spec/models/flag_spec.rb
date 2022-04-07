require 'rails_helper'

RSpec.describe Flag, type: :model do
  context 'validations:' do
    # Length
    it { should validate_length_of(:country_code).is_equal_to(3) } # ISO 3166-1 alpha-3 codes are three-letter country codes - https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3

    # Number
    it { should validate_numericality_of(:price) }

    # Presence
    it { should validate_presence_of(:country_code) }
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:currency_code) }
    it { should validate_presence_of(:image_url) }
    it { should validate_presence_of(:price) }
  end
end
