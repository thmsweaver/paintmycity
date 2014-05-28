require 'spec_helper'

describe User do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should have_many(:compositions) }

  describe "#update" do
    let(:user) { FactoryGirl.create(:user) }

    it "can update user's name" do
      user.update(:name => "George")
      expect(user.name).to eq("George")
    end
  end

end
