class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	t.string :itemname, limit: 255
        

      t.timestamps
    end
  end
end
