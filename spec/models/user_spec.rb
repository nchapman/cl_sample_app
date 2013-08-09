require 'spec_helper'

describe User do
  let(:user) { FactoryGirl.create(:user) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should allow_value('hello@example.com').for(:email) }
  it { should_not allow_value('hello').for(:email) }

  it 'validates uniqueness of email' do
    user.should validate_uniqueness_of(:email)
  end

  it { should validate_presence_of(:password) }

  it 'validates password confirmation' do
    user = FactoryGirl.build(:user, password_confirmation: 'wrongvalue')

    user.should_not be_valid
    user.errors[:password_confirmation].should eq ["doesn't match Password"]
  end

  it 'generates authentication token' do
    user.authentication_token.should_not be_nil
  end
end
