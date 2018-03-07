class PortfolsController < ApplicationController
  def index
    @portfolio_item = Portfol.all
  end

  def new
    @portfolio_item = Portfol.new
  end

  def create
    @portfolio_item = Portfol.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfols_path, notice: 'Your portfolio is live now' }
      else
        format.html { render :new }
      end
    end
  end

  private
    def portfolio_params
      params.require(:portfol).permit(:title, :subtitle, :body)
    end

end
