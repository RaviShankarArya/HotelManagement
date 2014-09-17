class CategoriesController < ApplicationController
	def new
		@category=Category.new
	end

	def create
		@category=Category.new(category_params)
		if @category.save	
		   redirect_to categories_path
	    else
	    	render 'new'
	    end
	end

	def index
		@category=Category.all
	end

	def show
		@category=Category.find(params[:id])
	end

	private
	def category_params
		params.require(:categories).permit(:itemname)
	end
end
