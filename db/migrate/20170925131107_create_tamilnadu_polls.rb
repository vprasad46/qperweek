class CreateTamilnaduPolls < ActiveRecord::Migration[5.1]
  def change
    create_table :tamilnadu_polls do |t|
    	t.string :ip
    	t.string :email , unique: true
    	t.integer :choice
    	t.integer :voter
      t.timestamps
    end
  end
end
