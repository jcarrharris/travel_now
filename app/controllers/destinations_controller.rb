class DestinationsController < ApplicationController
	
	def index
		@destinations = Destination.all
	end

	def show
		@destination = Destination.find(params[:id])

		if current_user
   		 @review = @destination.reviews.build
  		end
	end

	def new
		@destination= Destination.new
	end

	def create
		@destination = Destination.new(params[:destination])

		if @destination.save 
			redirect_to destinations_url
		else
			render :new
		end
	end

	def edit 
		@destination = Destination.find(params[:id])
	end

	def update
		@destination = Destination.find(params[:id])

		if @destination.update_attributes(params[:destination])
			redirect_to @destination
		else
			render action: "edit"
		end
	end

	def destroy
		@destination = Destination.find(params[:id])
		@destination.destroy

		redirect_to destinations_url
	end

	def like
		@destination = Destination.find(params[:id])
		current_user.like!(@destination)

		redirect_to destination_url
	end

	def unlike
		@destination = Destination.find(params[:id])
		current_user.unlike!(@destination)

		redirect_to destination_url
	end
	
end
