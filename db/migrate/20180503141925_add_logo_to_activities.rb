class AddLogoToActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :logo, :json
  end
end
