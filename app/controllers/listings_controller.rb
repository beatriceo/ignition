class ListingsController < ApplicationController
  before_action :find_listing, only: [:show, :edit, :update, :destroy]

  def new
    @listing = Listing.new
  end

  def show
  end


  def edit
    # User id
  end

  def update
    if @listing.update(listing_params)
      redirect_to listing_path(@listing)
    else
      render :edit
    end
  end

  def create
    # User id
    @listing = Listing.new(listing_params)
    @listing.user = User.find(params[:user_id])
      # raise
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end

  def index
    @listings = Listing.all
  end

  def destroy
    # user id
    @listing.destroy
    redirect_to listings_path
  end

  private

  def find_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:transportation_type, :cost, :location, :date_start, :date_end, :rating, :description, :user_id)
  end
end
