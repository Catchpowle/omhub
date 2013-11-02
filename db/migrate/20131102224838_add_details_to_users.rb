class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bio, :string
    add_column :users, :url, :string
  end
end
