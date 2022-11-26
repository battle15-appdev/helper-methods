class DirectorsController < ApplicationController
  def new
    @director = Director.new  
  end 
  
  def index
      @directors = Director.order(created_at: :desc)

      respond_to do |format|
        format.json do
          render json: @list_of_movies
        end

        format.html
      end
    end
end