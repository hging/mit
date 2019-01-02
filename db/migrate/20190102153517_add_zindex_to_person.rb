class AddZindexToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :zindex, :integer, :default => 0
    add_index :people, :zindex
  end
end
