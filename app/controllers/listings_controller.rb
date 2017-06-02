class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :set_options, only: [:new, :edit, :update, :create]
  # GET /listings
  # GET /listings.json
def search
  if params[:category_id].present?
	@category = Category.find(params[:category_id])
	@subcategory = nil
elsif params[:subcategory_id].present?
	@subcategory = Subcategory.find(params[:subcategory_id])
	@category = Category.find(@subcategory.category_id)
end
  end

  def index
    @listings = Listing.all
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
  end



  # GET /listings/new
  def new

    @listing = Listing.new
  end

  # GET /listings/1/edit
  def edit
  end





  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.new(listing_params)

    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    def set_options
      @options_for_select_ary = Subcategory.all.collect {|subcategory| [ subcategory.subcategory_name, subcategory.id ] }

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:id, :description, :price, :subcategory_id, :image)
    end
end
