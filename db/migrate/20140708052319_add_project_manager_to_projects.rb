class AddProjectManagerToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :project_manager, :id
  end
end
