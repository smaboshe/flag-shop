require 'rails_helper'

RSpec.describe Flag, type: :model do
  context 'validations:' do
    # Presence
    it { should validate_presence_of(:country_code) }
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:currency_code) }
    it { should validate_presence_of(:image_url) }
    it { should validate_presence_of(:price) }

    # Number
    it { should validate_numericality_of(:price) }
  end
end
