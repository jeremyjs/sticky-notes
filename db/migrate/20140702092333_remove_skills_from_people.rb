class RemoveSkillsFromPeople < ActiveRecord::Migration
  def change
    remove_column :people, :skills, :text
  end
end
