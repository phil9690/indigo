# Looking Message class
class LookingMessage
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :title, :first_name, :second_name, :address_line_1, :address_line_2, :city, :postcode, :contact_number, :contact_email, :occupation, :qualification_1, :qualification_2, :qualification_3

  validates :title, :first_name, :second_name, :address_line_1, :address_line_2, :city, :postcode, :contact_number, :contact_email, :occupation, presence: true

  validates :contact_email, email: true

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
