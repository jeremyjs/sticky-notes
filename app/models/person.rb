class Person < ActiveRecord::Base
  has_and_belongs_to_many :projects
  has_many :roles
  has_many :skills

  validates_uniqueness_of :projects
  validates_uniqueness_of :roles
  validates_uniqueness_of :skills

  def color
    if roles.any?
      roles.first.color.hex
    else
      "white"
    end
  end
end
