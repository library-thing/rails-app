# == Schema Information
#
# Table name: student_books
#
#  id            :integer          not null, primary key
#  checkout_date :datetime
#  book_id       :integer
#  student_id    :integer
#  library_id    :integer
#

class CheckoutBook < ActiveRecord::Base
  belongs_to :student
  belongs_to :book
end
