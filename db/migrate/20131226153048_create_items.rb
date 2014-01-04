class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :merchant
      t.references :invoice

      t.timestamps
    end
  end
end
