# Enquiry Message class
class EnquiryMessage
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :first_name, :second_name, :contact_email, :message

  validates :first_name, :second_name, :contact_email, :message, presence: true

  validates :contact_email, email: true

 def full_name
  "#{first_name} #{second_name}"
 end

end
