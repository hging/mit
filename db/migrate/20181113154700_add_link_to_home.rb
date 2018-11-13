class AddLinkToHome < ActiveRecord::Migration[5.1]
  def change
    add_column :homes, :link, :string
  end
end
