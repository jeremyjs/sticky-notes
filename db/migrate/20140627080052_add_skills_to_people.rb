class AddSkillsToPeople < ActiveRecord::Migration
  def change
    add_column :people, :skills, :text
  end
end
