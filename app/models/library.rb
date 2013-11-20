# == Schema Information
#
# Table name: libraries
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  name       :string(255)
#

class Library < ActiveRecord::Base
  has_many :library_books
  has_many :books, :through => :library_books
end
