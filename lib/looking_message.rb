# Looking Message class
class LookingMessage
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :title, :first_name, :second_name, :address_line_1, :address_line_2, :city, :postcode, :contact_number, :contact_email, :occupation, :type_of_work, :terms_of_service

  validates :title, :first_name, :second_name, :address_line_1, :address_line_2, :city, :postcode, :contact_number, :contact_email, :occupation, presence: true

  validates :contact_email, email: true

  validates :terms_of_service, acceptance: true

 def full_name
  "#{title} #{first_name} #{second_name}"
 end

 def address
  address = ""
  address += "#{address_line_1}\n"
  address += "#{address_line_2}\n"
  address += "#{city}\n"
  address += "#{postcode}\n"
 end
end
