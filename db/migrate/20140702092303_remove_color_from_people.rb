class RemoveColorFromPeople < ActiveRecord::Migration
  def change
    remove_column :people, :color, :string
  end
end
