class RenameStudentBooks < ActiveRecord::Migration
  def change
    rename_table :student_books, :checkout_books
  end
end
