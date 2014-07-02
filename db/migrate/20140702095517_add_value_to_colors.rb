class AddValueToColors < ActiveRecord::Migration
  def change
    add_column :colors, :value, :string
  end
end
