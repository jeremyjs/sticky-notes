class RemoveHexFromColors < ActiveRecord::Migration
  def change
    remove_column :colors, :hex, :string
  end
end
