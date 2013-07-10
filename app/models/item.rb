class Item
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :price, type: Integer
  field :quantity, type: Integer
  # field :region, type: String
  # field :item_type, type: String

  belongs_to :item_type
  belongs_to :region
end
