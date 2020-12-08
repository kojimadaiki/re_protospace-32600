class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
