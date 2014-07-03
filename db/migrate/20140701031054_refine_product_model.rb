class RefineProductModel < ActiveRecord::Migration
  def up
    rename_column :products, :descript, :description
  end

  def down
    rename_column :products, :description, :descript
  end
end
