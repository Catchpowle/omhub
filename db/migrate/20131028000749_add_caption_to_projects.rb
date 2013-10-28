class AddCaptionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :caption, :string
    add_column :projects, :caption2, :string
    add_column :projects, :caption3, :string
    add_column :projects, :caption4, :string
    add_column :projects, :caption5, :string
  end
end
