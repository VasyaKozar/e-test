require 'rails_helper'

RSpec.describe Product, type: :model do
  let!(:categorie){create(:categorie)}

    subject{
       build(:product, categorie: categorie)
    }

  context "validation" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
  end

  context "association" do
    it {should have_many(:questions)}
    it {should have_many(:posts)}
    it {should have_many(:orders)}

    it {should belong_to(:categorie)}
  end

  describe "validation not empty" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:images) }
  end
end
