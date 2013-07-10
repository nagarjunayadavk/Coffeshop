class VegMenu
  include Mongoid::Document
  has_and_belongs_to_many :south_indians
end
