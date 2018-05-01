class CreateStaffs < ActiveRecord::Migration[5.1]
  def change
    create_table :staffs do |t|
      t.string :email, :limit => 100
      t.string :password_digest

      t.timestamps
    end
  end
end
