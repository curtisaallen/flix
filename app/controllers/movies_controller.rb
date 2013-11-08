class MoviesController < ApplicationController
	def index
		@movies = Movie.all
		@teams = ["cowboys", "heat", "bulls"]
	end

	def show
      @movie = Movie.find(params[:id])
	end

	def edit
     @movie = Movie.find(params[:id])
    end
end
