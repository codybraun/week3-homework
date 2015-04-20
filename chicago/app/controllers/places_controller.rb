class PlacesController < ApplicationController
  
  def index
    @places = Place.all
    render "index"
  end  
  
  def show
    @place = Place.find_by(:id => params["id"])
    render "show"
  end
  
  def delete
    to_delete = Place.find_by(id: params["id"])
    to_delete.delete()
    @places = Place.all
    render "index"
  end
  
  def new
    render "new"
  end
  
end
