class SouthIndian
  include Mongoid::Document
  field :item_name, type: String
  field :price, type: Integer

  has_and_belongs_to_many :veg_menu
end
