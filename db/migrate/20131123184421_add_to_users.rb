class AddToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :login, :string
    add_column :users, :gravatar_url, :string
  end
end
