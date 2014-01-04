class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :token
      t.string :name
      t.integer :state

      t.timestamps
    end
    
    add_index :customers, :token, unique: true
  end
end
