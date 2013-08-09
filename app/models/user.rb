class User < ActiveRecord::Base
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/ }

  before_create :set_authentication_token

  def set_authentication_token
    if password.present?
      self.authentication_token = "#{password}-value"
    end
  end
end
