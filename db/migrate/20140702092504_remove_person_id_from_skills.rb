class RemovePersonIdFromSkills < ActiveRecord::Migration
  def change
    remove_column :skills, :person_id, :integer
  end
end
