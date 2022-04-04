FactoryBot.define do
  factory :flag do
    image_url { "https://www.nationsonline.org/flags_big/Zambia_lgflag.gif" }
    country { "Zambia" }
    country_code { "zmb" }
    price { "750.00" }
    currency_code { "zmw" }
  end
end
