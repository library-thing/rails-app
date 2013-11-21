class RemoveLibraryBooks < ActiveRecord::Migration
  def change
    drop_table :library_books
  end
end
