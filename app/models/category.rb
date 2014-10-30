class Category < ActiveRecord::Base
	has_many :item_types, :class_name => 'Itemtype'
  validates :itemname, presence: true
end
