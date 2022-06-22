require "rails_helper"

RSpec.describe Order, type: :model do
  context "validations:" do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:phone) }
    it { should validate_presence_of(:shipping_address) }
  end
end
