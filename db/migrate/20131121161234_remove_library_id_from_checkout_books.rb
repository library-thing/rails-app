class RemoveLibraryIdFromCheckoutBooks < ActiveRecord::Migration
  def change
    remove_column :checkout_books, :library_id
  end
end
