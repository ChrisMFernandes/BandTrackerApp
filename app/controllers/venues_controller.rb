class VenuesController < ApplicationController

	def index
		@venues = Venue.all
		@bands = Band.all
		@events = Event.all
	end

	def show
		@venues = Venue.find(params[:id])
	end

	def new
		@venues = Venue.new
	end

	def create
		@venue = Venue.create(name: params[:venue][:name],city: params[:venue][:city],state: params[:venue][:state],family_friendly: params[:venue][:family_friendly])
		redirect_to venues_path
	end

	def edit
		@venues = Venue.find(params[:id])
	end

	def update
		@venues = Venue.find(params[:id])
		@venues.update(name: params[:venue][:name],city: params[:venue][:city],state: params[:venue][:state],family_friendly: params[:venue][:family_friendly])
		redirect_to venues_path
	end

	def destroy
		@venues = Venue.find(params[:id])
		@venues.destroy
		redirect_to venues_path
	end
end
