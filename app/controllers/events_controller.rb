class EventsController < ApplicationController

	def index
		@events = Event.all
		@venues = Venue.find_by(params[:name])
		@bands = Band.find_by(params[:name])
	end

	def show
		@events = Event.find(params[:id])
	end

	def new
		@events = Event.new(:venue_id => params[:venue_id], :band_id => params[:band_id])
	end

	def create
		@events = Event.create(date: params[:date], alcohol_served: params[:alcohol_served])
		redirect_to events_path
	end

	def edit
		@events = Event.find(params[:id])
	end

	def update
		@events = Event.find(params[:id])
		@events.update(date: params[:date], alcohol_served: params[:alcohol_served])
		redirect_to events_path
	end

	def destroy
		@events = Event.find(params[:id])
		@events.destroy
		redirect_to events_path
	end

	def search
		@events = Event.search(params[:band_id], params[:venue_id], params[:search])
	end
end
