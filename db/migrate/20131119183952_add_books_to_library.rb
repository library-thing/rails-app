class AddBooksToLibrary < ActiveRecord::Migration
  def change
    add_column :books, :library_id, :integer
  end
end
