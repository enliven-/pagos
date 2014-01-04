class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :token

      t.timestamps
    end
    
    add_index :vendors, :token, unique: true
  end
end
