class SpendsController < ApplicationController

  before_action :get_category, only: [:create, :new, :destroy, :edit, :update]
  before_action :get_spend, only: [:edit, :destroy, :update]

  def create 
    @spend = @category.spends.create(spend_params)
    redirect_to category_path(@category)
  end

  def edit
  end

  def update
    @spend.update(spend_params)
    redirect_to @category
  end


  def destroy
    @spend.destroy
    redirect_to category_path(@category)
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def get_category
      @category = Category.find(params[:category_id])
    end

    def get_spend
      @spend = @category.spends.find(params[:id])
      #@spend = Spend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spend_params
      params.require(:spend).permit(:amount, :category_id, :date, :subject)
    end
end