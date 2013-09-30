class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.boolean :livemode, default: false
      t.boolean :used, default: false
      t.references :card, index: true
      t.references :account, index: true

      t.timestamps
    end
  end
end
