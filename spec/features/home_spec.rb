require "rails_helper"

RSpec.describe "Home features:" do
  it "display the title" do
    visit "/"
    expect(page).to have_content(I18n.t("application.name"))
  end

  context "when there are no flags in the database" do
    it "display a 'no flag' notifcation" do
      visit "/"
      expect(page).to have_content(I18n.t("flags.index.no_flags_available"))
    end
  end

  context "when there are flags in the database" do
    it "display the flags" do
      first_flag = create(:flag, country: "Montera", country_code: "cc1", price: 750, currency_code: "ZMW", image_url: "https://fake-flag-1.gif")
      second_flag = create(:flag, country: "Montera2", country_code: "cc2", price: 750, currency_code: "ZMW", image_url: "https://fake-flag-2.gif")

      visit "/"
      expect(page).to have_content(first_flag.country)
      expect(page).to have_content(first_flag.price)
      expect(page).to have_content(second_flag.country)
      expect(page).to have_content(second_flag.price)
    end
  end
end
