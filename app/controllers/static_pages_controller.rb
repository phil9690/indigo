class StaticPagesController < ApplicationController
  def home
    @hiring_message = HiringMessage.new
  end
end
