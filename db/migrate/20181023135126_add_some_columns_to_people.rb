class AddSomeColumnsToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :group, :longtext
    add_column :people, :teaching, :longtext
    add_column :people, :research, :longtext
    add_column :people, :publication, :longtext
  end
end
