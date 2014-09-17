class ItemtypesController < ApplicationController
	def new
		@itemtype=Itemtype.new
	end

	def create
		
		@itemtype=Itemtype.new(item_params)
		@itemtype.save
		redirect_to itemtypes_path

	end

	def show
		@itemtype=ItemType.find(params[:id])
	end

	def index
		@itemtype=Itemtype.all
	end
     
     private 
     def item_params
     	params.require(:itemtypes).permit(:itemtypename,:amount,:category_id)
     end

end
