class AddHexToColors < ActiveRecord::Migration
  def change
    add_column :colors, :hex, :text
  end
end
