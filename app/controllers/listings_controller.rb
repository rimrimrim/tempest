class ListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_listing, only: [:update]
  def index
  end

  def show
  end

  def new
    @listing = current_user.listings.build
  end

  def create
    @listing = current_user.listings.build(listing_params)

    if @listing.save
      redirect_to manage_listing_basics_path(@listing), notice: "リスティングを作成・保存をしました"
    else
      redirect_to new_listing_path, notice: "リスティングを作成・保存出来ませんでした"
    end

  end

  def edit
  end

  def update
    if @listing.update(listing_params)
      redirect_back(fallback_location: root_path)
    end
  end

  def basics
    @listing = Listing.find(params[:id])
  end

  def description
    @listing = Listing.find(params[:id])
  end

  def address
    @listing = Listing.find(params[:id])
  end

  def price
    @listing = Listing.find(params[:id])
  end

  def photos
    @listing = Listing.find(params[:id])
    @photo = Photo.new
  end

  def calendar
    @listing = Listing.find(params[:id])
  end

  def acount
    @listing = Listing.find(params[:id])
  end

  def publish
    @listing = Listing.find(params[:id])
  end

  private
  def listing_params
    params.require(:listing).permit(:home_type, :pet_type, :breeding_years, :pet_size, :price)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
