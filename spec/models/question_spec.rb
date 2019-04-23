require 'rails_helper'

RSpec.describe Question, type: :model do

  context "validation" do
    let!(:user){create(:user)}
    let!(:cat){create(:categorie)}
    let!(:product){create(:product, categorie: cat)}

    subject{
       build(:question, user: user, product: product)
    }
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
  end

  context "association" do
    it {should belong_to(:user)}
    it {should belong_to(:product)}
  end

  describe "validation not empty" do
    it { is_expected.to validate_presence_of(:body) }
  end
end
