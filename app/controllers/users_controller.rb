class UsersController < ApplicationController
  def new
    @user = User.new
    @user.save
  end

  def create
    @user = User.new
    @user.save
  end
end
