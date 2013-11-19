class CreateMains < ActiveRecord::Migration
  def change
    create_table :mais do |t|

      t.timestamps
    end
  end
end
