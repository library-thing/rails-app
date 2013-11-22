class RenameAuthorBooks < ActiveRecord::Migration
  def change
      rename_column :books, :author, :authors
      change_column :books, :authors, :text
  end
end
