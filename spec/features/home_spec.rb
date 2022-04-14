require "rails_helper"

RSpec.describe "Home features" do
  it "display the title" do
    visit "/"
    expect(page).to have_content("Flag Shop")
  end

  it "display the flag" do
    flag = create(:flag, country: "Montera", country_code: "mmm", price: 750, currency_code: "ZMW", image_url: "https://www.montenera.org/english/assets/images/vlag-montenera-nieuw-160x107.jpg")

    visit "/"
    expect(page).to have_content(flag.country)
    expect(page).to have_content(flag.price)
  end
end
