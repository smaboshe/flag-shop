FactoryBot.define do
  factory :payment do
    medium { "MyString" }
    status { "MyString" }
    processor { "MyString" }
    currency { "MyString" }
    amount { "9.99" }
    order { nil }
  end
end
