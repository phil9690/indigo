class StaticPagesController < ApplicationController
  def home
    @hiring_message = HiringMessage.new
    @looking_message = LookingMessage.new
  end

  def about
  end

  def who
  end

  def contact
    @hiring_message = HiringMessage.new
    @looking_message = LookingMessage.new
    @enquiry_message = EnquiryMessage.new
  end
end
