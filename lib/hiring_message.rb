# Hiring Message class
class HiringMessage
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :title, :first_name, :second_name, :address_line_1, :address_line_2, :city, :postcode, :contact_number, :contact_email
  attr_accessor :work_location, :type_of_worker_1, :type_of_worker_2, :type_of_worker_3

  validates :title, :first_name, :second_name, :address_line_1, :address_line_2, :city, :postcode, :contact_number, :contact_email, presence: true

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
