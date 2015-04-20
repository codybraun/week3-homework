class PlacesController < ApplicationController
  
  def index
    @places = Place.all
    render "index"
  end  
  
  def show
    @id = params["id"]
    @place = Place.find_by(:id => params["id"])
    @reviews = @place.reviews
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
  
  def create
    Place.create(title: params["title"], description: params["description"], admission: params["admission"], photoURL: params["photoURL"])
    @places = Place.all
    render "index"
  end
  
  def review
     place = Place.find_by(:id => params["id"])
     place.reviews.create(title: params["title"], description: params["description"], rating: params["rating"])
     @places = Place.all
     render "index"
   end
   
  def update
     place = Place.find_by(:id => params["id"])
     place.title= params["title"]
     place.description= params["description"]
     place.admission= params["admission"]
     place.photoURL= params["photoURL"]
     place.save
     @places = Place.all
     render "index"
   end
   
  def edit
     @place = Place.find_by(:id => params["id"])
     render "edit"
   end
  
end
