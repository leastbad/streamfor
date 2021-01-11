class WidgetsChannel < ApplicationCable::Channel
  def subscribed
    stream_for Widget.find(params[:id])
  end
end