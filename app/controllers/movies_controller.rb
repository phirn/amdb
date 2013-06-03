class MoviesController < ApplicationController

  def index
    @movies = Movie.order("number_of_votes DESC").order("title ASC").page(params[:page]).per(3)

    respond_to do |format|
      format.html do
        render 'index'
      end
      format.json do
        render json: @movies
      end
    end
  end

  def show
    @movie = Movie.find_by_id(params[:id])

    respond_to do |format|
      format.html { render 'show' }
      format.json { render json: @movie }
    end

  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(params[:movie])

    if @movie.save
      redirect_to movies_url
    else
      render 'new'
    end
  end

  def edit
    @movie = Movie.find_by_id(params[:id])
  end

  def update
    @movie = Movie.find_by_id(params[:id])

    if @movie.update_attributes(params[:movie])
      redirect_to @movie
    else
      render 'edit'
    end
  end

  def destroy
    @movie = Movie.find_by_id(params[:id])
    @movie.destroy
    redirect_to movies_url
  end
end
