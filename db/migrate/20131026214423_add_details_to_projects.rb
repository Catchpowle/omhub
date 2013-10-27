class AddDetailsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :url, :string
    add_column :projects, :github, :string
  end
end
