# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  author     :string(255)
#  library_id :integer
#

class Book < ActiveRecord::Base
  has_many :library_books
  has_many :libraries, :through => :library_books

  has_many :student_books
  has_many :students, :through => :student_books

end
