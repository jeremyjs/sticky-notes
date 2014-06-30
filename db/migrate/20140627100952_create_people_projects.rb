class CreatePeopleProjects < ActiveRecord::Migration
  def change
    create_table :people_projects do |t|
      t.integer :person_id
      t.integer :project_id
    end
  end
end
