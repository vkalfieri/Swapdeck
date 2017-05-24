class SubcategoriesController < ApplicationController
  before_action :set_subcategory, only: [:show, :edit, :update, :destroy]

  # GET /subcategories
  # GET /subcategories.json
  def index
    @subcategories = Subcategory.all
  end

  # GET /subcategories/1
  # GET /subcategories/1.json
  def show
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcategory
      @subcategory = Subcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subcategory_params
      params.require(:subcategory).permit(:subcategory_id, :subcategory_name, :category_id)
    end
end
