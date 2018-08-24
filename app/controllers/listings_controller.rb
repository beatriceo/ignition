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
    @listing.user = User.find(params[:user_id])
    authorize @listing
  end

  def show
  end

  # def display
  #   @listings = Listing.where.not(latitude: nil, longitude: nil)
  #   @markers = @listings.map do |listing|
  #     {
  #       lat: listing.latitude,
  #       lng: listing.longitude
  #       # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
  #     }
  #   end
  # end
  # # --- line 23 to 32 is to mark all the locations from every car on the map. but we only want to mark the location of the car we are currently looking at hence we need the code from line 34 to 42!! no need to loop do because .map will just return an array with all the locations but we only need one location. NB markers needs to be an array of hashes even if there is only one hash!

  def display
    @markers = [
      {
        lat: @listing.latitude,
        lng: @listing.longitude
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    ]
  end

  def edit
    # User id
    @listing.user = User.find(params[:user_id])
  end

  def update
    if @listing.update(listing_params)
      redirect_to listing_new_path(current_user)
    else
      render :edit
    end
  end

  def create
    # User id
    dates = params[:listing][:date_start].scan(/[\d-]+/)
    listing = Listing.new(listing_params)
    listing.date_start = dates[0]
    listing.date_end = dates[1]
    listing.user = User.find(params[:user_id])

    if listing.save
      redirect_to listing_new_path(current_user)
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
    redirect_to listing_new_path(current_user)
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

