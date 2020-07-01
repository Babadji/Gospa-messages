class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def random
    @message = Message.all.sample
    redirect_to message_path(@message)
  end

  private

  def message_params
    params.require(:message).permit(:title, :date, :description, :name)
  end
end
