class AddDetailsToOwnerinfos < ActiveRecord::Migration[6.1]
  def change
    add_column :ownerinfos, :store_image02, :text
    add_column :ownerinfos, :store_image03, :test
    add_column :ownerinfos, :store_image04, :text
  end
end
