class ItemsController < ApplicationController

	def index
		@item = Item.all
		render :index
	end

	def new
		@item = Item.new
		render :new
	end

	def create
		@item = Item.new(item_params)
		if @item.save
			redirect_to "/"
		end
	end

	def item_params
		params.require(:item).permit(:serial_number, :description, :supplier, :status, :lender)
	end

	def show
		@item = Item.find(params[:id].to_i)
	end

	def edit
		@item = Item.find(params[:id].to_i)
	end

	def update
		@item = Item.find(params[:id].to_i)
		@item.update(item_params)
		render :show
	end

	def destroy
		@item = Item.find(params[:id].to_i)
		@item.destroy
		redirect_to(items_path)	
	end
end
