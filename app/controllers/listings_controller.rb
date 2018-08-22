class ListingsController < ApplicationController
  before_action :find_listing, only: [:show, :edit, :update, :destroy, :display]

  def home
    # @listings = policy_scope(Listing).order(created_at: :desc)
    if params[:transportation_type].present? || params[:query].present?
      @listings = Listing.where("transportation_type ILIKE ? AND location ILIKE ?", "%#{params[:transportation_type]}%", "%#{params[:query]}%")
    else
      @listings = Listing.all
    end
    authorize @listings
  end

  def new
    @listing = Listing.new
    authorize @listing
  end

  def show; end
  def display; end

  def edit
    # User id
    @listing.user = User.find(params[:user_id])
  end

  def update
    if @listing.update(listing_params)
      redirect_to listing_path(@listing.user, @listing)
    else
      render :edit
    end
  end

  def create
    # User id
    listing = Listing.new(listing_params)
    listing.user = User.find(params[:user_id])

    if listing.save
      redirect_to root_path
    else
      render :new
    end
    authorize listing
  end

  def index
    @listings = policy_scope(Listing).order(created_at: :desc)
  end

  def destroy
    # user id
    @listing.destroy
    redirect_to listings_path
  end

  private

  def find_listing
    @listing = Listing.find(params[:id])
    authorize @listing
  end

  def listing_params
    params.require(:listing).permit(:photo, :transportation_type, :cost, :location, :date_start, :date_end, :rating, :description)
  end
end
