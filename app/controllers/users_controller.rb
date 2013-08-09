class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    @user.save

    respond_with @user
  end

  private

    # Since the keys we want aren't nested under another parameter, we have to slice out just the
    # parameters that we want before calling permit
    def user_params
      permitted_parameters = [:name, :email, :password, :password_confirmation]

      params.slice(*permitted_parameters).permit(*permitted_parameters)
    end
end
