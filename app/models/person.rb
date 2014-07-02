class Person < ActiveRecord::Base
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :roles
  has_and_belongs_to_many :skills

  def role
    roles.first
  end

  def color
    if roles.any?
      role.color.hex
    else
      "white"
    end
  end
end
