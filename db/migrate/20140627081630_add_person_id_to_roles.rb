class AddPersonIdToRoles < ActiveRecord::Migration
  def change
    add_column :roles, :person_id, :integer
  end
end
