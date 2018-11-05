class AddZindexToMenus < ActiveRecord::Migration[5.1]
  def change
    add_column :menus, :zindex, :integer, :default => 0
    add_index :menus, :zindex
  end
end
