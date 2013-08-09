require 'spec_helper'

describe UsersController do
  let(:valid_attributes) {
    {
      'name' => 'John Doe',
      'email' => 'john@doe.com',
      'password' => 's3kr3t',
      'password_confirmation' => 's3kr3t'
    }
  }

  describe 'POST create' do
    it 'creates a new User' do
      expect {
        post :create, valid_attributes.merge(format: :json)
      }.to change(User, :count).by(1)
    end
  end
end
