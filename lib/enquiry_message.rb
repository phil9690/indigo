# Enquiry Message class
class EnquiryMessage
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :first_name, :second_name, :contact_email, :message, :terms_of_service

  validates :first_name, :second_name, :contact_email, :message, presence: true

  validates :contact_email, email: true

  validates :terms_of_service, acceptance: true
 
 def full_name
  "#{first_name} #{second_name}"
 end

end
