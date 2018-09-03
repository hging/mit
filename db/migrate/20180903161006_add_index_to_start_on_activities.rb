class AddIndexToStartOnActivities < ActiveRecord::Migration[5.1]
  def change
    add_index :activities, :start
    add_index :activities, :end
  end
end
