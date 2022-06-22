require "rails_helper"

RSpec.describe Payment, type: :model do
  describe "validations:" do
    it { should validate_numericality_of(:amount) }

    it { should validate_presence_of(:amount) }
    it { should validate_presence_of(:card_expiry_month) }
    it { should validate_presence_of(:card_expiry_year) }
    it { should validate_presence_of(:card_name) }
    it { should validate_presence_of(:card_number) }
    it { should validate_presence_of(:currency) }
    it { should validate_presence_of(:medium) }
    it { should validate_presence_of(:processor) }
    it { should validate_presence_of(:status) }
  end
end
