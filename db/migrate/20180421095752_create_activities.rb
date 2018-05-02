class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.text :content
      t.string :title
      t.string :author
      t.boolean :published
      t.timestamp :start
      t.timestamp :end
      t.integer :activity_type, :default => 0
      t.string :news_type

      t.timestamps
    end
    add_index :activities, :activity_type
    add_index :activities, :published
  end
end
