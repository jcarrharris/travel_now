class DestinationsController < ApplicationController
	def index
		@destinations = Destination.all
	end

	def show
		@destinations = Destination.find(params[:id])
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
end
