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

    def update
      @movie = Movie.find(params[:id])
	  @movie.update(movie_params)
      redirect_to @movie
    end

	def new
	   @movie = Movie.new
	end

    def create
	    @movie = Movie.new(movie_params)
	    @movie.save
	    redirect_to @movie
  	end


private

  def movie_params
    params.require(:movie).permit(:title, :description, :rating, :released_on, :totall_gross)
  end
end
