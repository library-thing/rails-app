class AddAvailabilityToLibraryBooks < ActiveRecord::Migration
  def change
    add_column :library_books, :available, :boolean
  end
end
