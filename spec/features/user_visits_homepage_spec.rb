require "rails_helper"

feature "User visits the homepage" do
  scenario "successfully" do
    visit root_path

    expect(page).to have_css "h1", text: I18n.t("application.name")
  end
end
