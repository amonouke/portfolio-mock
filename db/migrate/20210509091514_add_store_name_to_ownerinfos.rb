class AddStoreNameToOwnerinfos < ActiveRecord::Migration[6.1]
  def change
    add_column :ownerinfos, :store_name, :string
  end
end
