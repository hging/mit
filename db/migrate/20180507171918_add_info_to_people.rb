class AddInfoToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :professional, :string
    add_column :people, :research_area, :string
    add_column :people, :faculty, :string
    add_column :people, :person_type, :integer
  end
end
