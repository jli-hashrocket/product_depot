class AddOptionsToProducts < ActiveRecord::Migration
  def up
    change_column :products, :description, :text, precision: 8, scale: 2
  end

  def down
    change_column :products, :description, :text
  end
end
