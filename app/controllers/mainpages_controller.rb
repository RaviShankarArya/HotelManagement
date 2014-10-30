class MainpagesController < ApplicationController
	def new

	end

  def populate_sub_category
    @category = Category.find_by_id params[:id]
    @item_types = @category.item_types
  end
  #/mainpages/:id/populate_sub_category


end
