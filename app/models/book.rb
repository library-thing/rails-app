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
#  available  :boolean
#

class Book < ActiveRecord::Base
  belongs_to :library
  belongs_to :student
end
