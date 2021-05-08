class AddOwnerIdToOwnerinfos < ActiveRecord::Migration[6.1]
  def change
    add_column :ownerinfos, :owner_id, :integer
  end
end
