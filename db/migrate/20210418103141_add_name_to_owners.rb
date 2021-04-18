class AddNameToOwners < ActiveRecord::Migration[6.1]
  def change
    add_column :owners, :store_name, :string
  end
end
