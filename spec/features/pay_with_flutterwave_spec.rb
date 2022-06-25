require "rails_helper"

describe "Ordering a flag using Flutterwave" do
  context "with a card" do
    context "succeeds when the card is valid" do
      it "and the transaction passes PIN authentication" do
        flag = create(:flag)

        visit "/"
        click_link "Buy a flag of #{flag.country}"
        fill_in "Name", with: "Test Name"
        fill_in "Email", with: "xxxxxxxxxx@gmail.com"
        fill_in "Phone", with: "+26 098 888 8888"
        fill_in "Shipping address", with: "123 Mwaiseni Avenue, Lusaka, Zambia, 10101"
        fill_in "Card name", with: "Test Name"
        fill_in "Card number", with: "5531886652142950"
        fill_in "Card expiry month", with: "09"
        fill_in "Card expiry year", with: "22"
        fill_in "Card CVV", with: "564"
        click_button "Order now"

        expect(page).to have_content("Successfully bought a flag of #{flag.country}")
      end
    end
  end
end
