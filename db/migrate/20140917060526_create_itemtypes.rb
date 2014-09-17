class CreateItemtypes < ActiveRecord::Migration
  def change
    create_table :itemtypes do |t|
      t.string :itemtypename
      t.integer :amount
      t.references :category, index: true

      t.timestamps
    end
  end
end
