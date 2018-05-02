class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :avatar
      t.string :name
      t.string :title
      t.string :email
      t.string :data_content_type
      t.string :data_file_size
      t.string :first_word

      t.timestamps
    end
    add_index :people, :first_word
  end
end
