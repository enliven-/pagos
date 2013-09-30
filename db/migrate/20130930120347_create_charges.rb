class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.boolean :livemode, default: false
      t.integer :amount
      t.boolean :captured, default: false
      t.string :currency, default: "INR"
      t.boolean :paid, default: false
      t.boolean :refunded, default: false
      t.integer :amount_refunded
      t.text :description
      t.boolean :failed, default: false
      t.string :failure_code
      t.string :failure_message
      t.references :card, index: true
      t.references :account, index: true

      t.timestamps
    end
  end
end
