class AddPersonIdToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :person_id, :integer
  end
end
