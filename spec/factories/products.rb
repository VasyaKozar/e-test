FactoryBot.define do
  factory :product do
    name { "name" }
    description { "description" }
    price { 12.34 }
    pcount { 300 }
  end
end
