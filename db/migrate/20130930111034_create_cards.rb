class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.boolean :livemode, default: false
      t.integer :exp_month, 
      t.integer :exp_year
      t.string :finderprint
      t.string :last4
      t.string :card_type
      t.string :cvc_check
      t.string :name
      t.string :number

      t.timestamps
    end
  end
end
