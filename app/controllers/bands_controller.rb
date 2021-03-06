class BandsController < ApplicationController
	
	def index
		@bands = Band.all
	end

	def show
		@bands = Band.find(params[:id])
	end

	def new
		@bands = Band.new
	end

	def create
		@bands = Band.create(name: params[:band][:name], genre: params[:band][:genre], explicit_lyrics: params[:band][:explicit_lyrics])
		redirect_to bands_path
	end

	def edit
		@bands = Band.find(params[:id])
	end

	def update
		@bands = Band.find(params[:id])
		@bands.update(name: params[:band][:name], genre: params[:band][:genre], explicit_lyrics: params[:band][:explicit_lyrics])
		redirect_to bands_path
	end

	def destroy
		@bands = Band.find(params[:id])
		@bands.destroy
		redirect_to bands_path
	end
end
