class PagesController < ApplicationController
  def home
    @message = Message.all.sample
  end
end
