class RenameStoreImageColumnToOnwerinfos < ActiveRecord::Migration[6.1]
  def change
    rename_column :ownerinfos, :store_image, :store_image01
  end
end
