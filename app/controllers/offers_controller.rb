class OffersController < ApplicationController
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
    authorize @offer
  end

  def destroy
    authorize @offer
  end

  private

  def offer_params; end
  def find_offer; end
end
