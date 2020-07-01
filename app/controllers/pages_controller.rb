class PagesController < ApplicationController
  def home
    @message = Message.all.sample

    @user = User.new
    @user.save
  end
end
