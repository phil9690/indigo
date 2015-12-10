class ContactController < ApplicationController

  # POST /hiring
  def hiring
    @message = HiringMessage.new(message_params)

    if @message.valid?
      ContactMailer.hiring(@message).deliver_now
      render status: :created
    else
      render status: :unprocessable_entity, nothing: true
    end
  end
end
