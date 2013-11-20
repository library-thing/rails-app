class RemoveAvailableFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :available, :boolean
  end
end
