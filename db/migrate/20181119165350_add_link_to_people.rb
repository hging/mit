class AddLinkToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :link, :string
  end
end
