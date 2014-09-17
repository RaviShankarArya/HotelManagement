class CreateMainpages < ActiveRecord::Migration
  def change
    create_table :mainpages do |t|
      t.float :total_amount
      t.references :category, index: true
      t.references :itemtype, index: true

      t.timestamps
    end
  end
end
