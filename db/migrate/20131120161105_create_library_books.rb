class CreateLibraryBooks < ActiveRecord::Migration
  def change
    create_table :library_books do |t|
      t.references :library, index: true
      t.references :book, index: true
    end
  end
end
