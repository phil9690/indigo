# Hiring Message class
class HiringMessage
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :title, :first_name, :second_name, :address_line_1, :address_line_2, :city, :postcode, :contact_number, :contact_email, :company_name
  attr_accessor :industry, :examples_of_work
  attr_accessor :terms_of_service

  validates :title, :first_name, :second_name, :address_line_1, :city, :postcode, :contact_number, :contact_email, :company_name, :examples_of_work, presence: true

  validates :contact_email, email: true

  validates :terms_of_service, acceptance: true

 def full_name
  "#{title} #{first_name} #{second_name}"
 end

 def address
  address = ""
  address += "#{address_line_1}\n"
  address += "#{address_line_2}\n" unless address_line_2.empty?
  address += "#{city}\n"
  address += "#{postcode}\n"
 end
end
