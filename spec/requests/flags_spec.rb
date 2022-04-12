require 'rails_helper'

RSpec.describe "Flags", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/flags/index"
      expect(response).to have_http_status(:success)
    end
  end

end
