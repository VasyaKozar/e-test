require 'rails_helper'

RSpec.describe Categorie, type: :model do
  context "association" do
    it {should have_many(:products)}
  end

  subject{
    build(:categorie)
  }
  it "is valid with valid attributes" do
      expect(subject).to be_valid
  end
  it "is invalid with invalid attributes" do
      subject.name = nil
      expect(subject).to_not be_valid
  end


  describe "validation not empty" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:photo) }
  end
end
