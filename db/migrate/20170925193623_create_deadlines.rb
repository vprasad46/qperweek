class CreateDeadlines < ActiveRecord::Migration[5.1]
  def change
    create_table :deadlines do |t|
    	t.datetime :endtime
    	t.string :name, unique: true
      t.timestamps
    end
  end
end
