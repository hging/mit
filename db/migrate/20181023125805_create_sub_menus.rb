class CreateSubMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_menus do |t|
      t.references :menu
      t.string :title
      t.longtext :body

      t.timestamps
    end
  end
end
