FactoryBot.define do
  factory :profile do
    name { "tester" }
    phone { 999999999 }
    address { "Wall st." }
    avatar { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/apple-touch-icon.png'), 'image/png') }
  end
end
