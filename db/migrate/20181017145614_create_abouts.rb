class CreateAbouts < ActiveRecord::Migration[5.1]
  def change
    create_table :abouts do |t|
      t.longtext :content
      t.integer   :singleton_guard

      t.timestamps
    end

    add_index(:abouts, :singleton_guard, :unique => true)
    About.create(:singleton_guard => 0, :content => "    The Network Science Research Center in SIST is now focus on the convergence of Communication, Computing and Control.  Professors and students in this center have received numerous international academic awards during recent three years, including:\r\n\r\n    ● 2018 ACM Sigmobile Test-of-Time Paper Award\r\n\r\n    ● 2016 IEEE  Signal Processing Society Young Author Best Paper Award\r\n\r\n    ● 2016 IEEE Information Theory Society Best Paper Award\r\n\r\n    ● 2016 IEEE Guglielmo Marconi Best Paper Award\r\n\r\n    ● 2016 IEEE Globecom Best Paper Award\r\n\r\n    ● 2016 IEEE Eric Sumner Award")
  end
end
