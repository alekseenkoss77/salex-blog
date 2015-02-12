class AddSlugToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :slug, :text
  end
end
