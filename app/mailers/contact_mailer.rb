class ContactMailer < ApplicationMailer
  default to: 'contact@integralwebsolutions.com'

  def hiring(message)
    @message = message
    mail(from: @message.contact_email, subject: "I'm looking to hire.")
  end

  def looking(message)
    @message = message
    mail(from: @message.contact_email, subject: "I'm looking for work.")
  end

  def enquiry(message)
    @message = message
    mail(from: @message.contact_email, subject: "General enquiry")
  end

end
