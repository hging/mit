class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.string :background

      t.timestamps
    end
    Home.create
  end
end
