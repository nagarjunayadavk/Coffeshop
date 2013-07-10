class HomeController < ApplicationController
  def index
  	
  end
  def south_indian
  	 @south_indian_veg_items = Item.where(:item_type_id => "51dbf1c1a59756a781000004").and(:region_id => "51dbf183a59756d941000001")
  	 @south_indian_non_veg_items = Item.where(:item_type_id => "51dbf1cfa597562aa2000005").and(:region_id => "51dbf183a59756d941000001")
  end
  def north_indian
  	@north_indian_veg_items = Item.where(:item_type_id => "51dbf1c1a59756a781000004").and(:region_id => "51dbf191a597564321000002")
  	@north_indian_non_veg_items = Item.where(:item_type_id => "51dbf1cfa597562aa2000005").and(:region_id => "51dbf191a597564321000002")
  end
  def chinese
  	@chinese_veg_items = Item.where(:item_type_id => "51dbf1c1a59756a781000004").and(:region_id => "51dbf1a7a5975646ef000003")
  	@chinese_non_veg_items = Item.where(:item_type_id => "51dbf1cfa597562aa2000005").and(:region_id => "51dbf1a7a5975646ef000003")
  end
end
