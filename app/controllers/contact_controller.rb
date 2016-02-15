class ContactController < ApplicationController

  # POST /hiring
  def hiring
    @message = HiringMessage.new(hire_message_params)

    if @message.valid?
      ContactMailer.hiring(@message).deliver_now
      render status: :created, nothing: true
    else
      render status: :unprocessable_entity, nothing: true
    end
  end

  # POST /looking
  def looking
    @message = LookingMessage.new(look_message_params)

    if @message.valid?
      ContactMailer.looking(@message).deliver_now
      render status: :created, nothing: true
    else
      render status: :unprocessable_entity, nothing: true
    end
  end

  # POST /enquiry
  def enquiry
    @message = EnquiryMessage.new(enquire_message_params)

    if @message.valid?
      ContactMailer.enquiry(@message).deliver_now
      render status: :created, nothing: true
    else
      render status: :unprocessable_entity, nothing: true
    end
  end


  private

  def hire_message_params
    params.require(:hiring_message).permit!
  end

  def look_message_params
    params.require(:looking_message).permit!
  end

  def enquire_message_params
    params.require(:enquiry_message).permit!
  end

end
