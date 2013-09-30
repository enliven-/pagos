class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.boolean :livemode, default: false
      t.boolean :charge_enabled, default: false
      t.string :country, default: "India"
      t.string :default_currency, default: "INR"
      t.boolean :details_submitted, default: false
      t.boolean :transfer_enabled, default: false
      t.string :email
      t.string :statement_descriptor

      t.timestamps
    end
  end
end
