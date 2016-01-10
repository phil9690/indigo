class StaticPagesController < ApplicationController
  def home
    @hiring_message = HiringMessage.new
    @looking_message = LookingMessage.new
  end
end
