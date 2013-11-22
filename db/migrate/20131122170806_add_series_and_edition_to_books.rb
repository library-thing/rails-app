class AddSeriesAndEditionToBooks < ActiveRecord::Migration
  def change
    add_column :books, :series, :string
    add_column :books, :edition, :string
  end
end
