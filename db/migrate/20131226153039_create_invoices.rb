class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.references :vendor
      t.references :customer
      t.string     :token   
      t.string     :email
      t.integer    :state
      t.string     :title
      t.text       :message
      t.text       :description
      t.text       :notes
      t.string     :amount
      t.string     :balance_due
      t.datetime   :due_at
      t.datetime   :invoice_at

      t.timestamps
    end
    
    add_index :invoices, :token, unique: true
    add_index :invoices, :state
  end
end
