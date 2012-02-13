class AddMenuLinkToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :menu_link, :string

  end
end
