class OffersController < ApplicationController
  before_action :find_offer, except: :destroy
  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    authorize @offer
  end

  def show
    authorize @offer
  end

  def confirm
    offer = Offer.new
    offer.user = User.find(params[:user_id])
    offer.listing = Listing.find(offer_params[:listing_id])

    authorize offer
    if offer.save
      redirect_to pending_offers_path(offer.user)
    else
      render "listings/display"
    end
  end

  def index
    @restaurants = policy_scope(Offer).order(created_at: :desc)
    @user = User.find(params[:user_id])
    @listings = @user.listings
  end

  def pending
    authorize @offer ? @offer : Offer.new
    @user = User.find(params[:user_id])
    @offers = @user.offers
  end


  def destroy
    # find offer
    @offer = Offer.find(params[:id])
    authorize @offer
    @offer.destroy
    redirect_to offers_path(current_user)
  end

  private

  def offer_params
    params.require(:offer).permit(:listing_id)
  end
  def find_offer
    @user = User.find(params[:user_id])
    @listings = @user.listings
    if @listings[0]
      @offer = @listings[0].offers[0]
    else
      @offer = nil
    end
  end
end
