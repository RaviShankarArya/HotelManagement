class AddQuantityToMainpages < ActiveRecord::Migration
  def change
    add_column :mainpages, :quantity, :integer
  end
end
