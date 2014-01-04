class Createmerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :token

      t.timestamps
    end
    
    add_index :merchants, :token, unique: true
  end
end
