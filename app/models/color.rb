class Color < ActiveRecord::Base
  has_one :role

  def self
    name
  end

  def hex
    "##{value}"
  end
end
