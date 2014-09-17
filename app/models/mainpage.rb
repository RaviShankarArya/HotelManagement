class Mainpage < ActiveRecord::Base
  belongs_to :category
  belongs_to :itemtype
end
