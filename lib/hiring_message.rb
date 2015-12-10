# Hiring Message class
class HiringMessage
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  EMAIL_REGEX = /\A([\w\.%\+\-]+)@mysite\.com\z/i

  attr_accessor :title, :first_name, :second_name, :address_line_1, :address_line_2, :city, :postcode, :contact_number, :contact_email, :occupation, :qualification_1, :qualification_2, :qualification_3
  attr_accessor :work_location, :type_of_worker_1, :type_of_worker_2, :type_of_worker_3

  validates :title, :first_name, :second_name, :address_line_1, :address_line_2, :city, :postcode, :contact_number, :contact_email, :occupation, presence: true
  validates_format_of :contact_email, :with => EMAIL_REGEX
end
