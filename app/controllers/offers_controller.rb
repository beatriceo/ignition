class OffersController < ApplicationController
  before_action :find_offer
  def new
    authorize @offer
  end

  def create
    authorize @offer
  end

  def show
    authorize @offer
  end

  def index
    @restaurants = policy_scope(Offer).order(created_at: :desc)
    @user = User.find(params[:user_id])
    @listings = @user.listings;
  end

  def pending
    authorize @offer
    @user = User.find(params[:user_id])
    @offers = @user.offers
  end

  def destroy
    authorize @offer
  end

  private

  def offer_params; end
  def find_offer
    @user = User.find(params[:user_id])
    @listings = @user.listings;
    @offer = @listings[0].offers[0];
  end
end
