class CreateStudentBooks < ActiveRecord::Migration
  def change
    create_table :student_books do |t|
      t.datetime :checkout_date
      t.references :book, index: true
      t.references :student, index: true
      t.references :library, index: true
    end
  end
end
