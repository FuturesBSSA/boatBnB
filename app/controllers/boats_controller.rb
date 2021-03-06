class BoatsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @boats = Boat.all
    @boats = @boats.where("lower(city) = ?", params[:city].downcase) if params[:city].present?
    @boats = @boats.where("size >= ?", params[:guests]) if params[:guests].present?
    # SELECT * FROM boats WHERE LOWER(city) = 'amsterdam' AND size >= 5

    # Let's DYNAMICALLY build the markers for the view.
  end

  def show
    @boat = Boat.find(params[:id])
    # @categories = ['Kayak', 'Cabin Cruiser', 'Motor Boat', 'Sail Boat', 'Fishing Boat']
    @full_name = @boat.owner.first_name + " " + @boat.owner.last_name

    @markers = Gmaps4rails.build_markers(@boat) do |boat, marker|
      marker.lat boat.latitude
      marker.lng boat.longitude
    end
  end

end

