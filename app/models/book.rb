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
  belongs_to :library

  has_many :checkout_books
  has_many :students, :through => :checkout_books

  def self.import(file)
    CSV.foreach(file.path, header: true) do |row|
      Book.create! row.to_hash
    end
    
  end

end
