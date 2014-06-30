class AddBandToPerson < ActiveRecord::Migration
  def change
    add_column :people, :band, :integer
  end
end
