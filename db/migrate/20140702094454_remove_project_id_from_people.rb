class RemoveProjectIdFromPeople < ActiveRecord::Migration
  def change
    remove_column :people, :project_id, :integer
  end
end
