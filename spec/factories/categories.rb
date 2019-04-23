FactoryBot.define do
  factory :categorie do
    name { "Categorie" }
    photo { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/apple-touch-icon.png'), 'image/png') }
  end
end
