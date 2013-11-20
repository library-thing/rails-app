# == Schema Information
#
# Table name: library_books
#
#  id         :integer          not null, primary key
#  library_id :integer
#  book_id    :integer
#  available  :boolean
#

class LibraryBook < ActiveRecord::Base
  belongs_to :library
  belongs_to :book
end
