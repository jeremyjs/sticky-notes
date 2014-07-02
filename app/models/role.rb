class Role < ActiveRecord::Base
  belongs_to :color
  has_and_belongs_to_many :people
end
