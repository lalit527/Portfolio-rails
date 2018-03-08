class PortfolsController < ApplicationController
  layout 'portfol'
  def index
    @portfolio_item = Portfol.all
  end

  def angular
    @angular_portfolio_item = Portfol.angular
  end

  def ruby_on_rails
    @ror_portfolio_item = Portfol.ruby_on_rails
  end

  def new
    @portfolio_item = Portfol.new
    3.times { @portfolio_item.technologies.build }
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

  def edit
    @portfolio_item = Portfol.find(params[:id])
  end

  def update
    @portfolio_item = Portfol.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfols_path, notice: 'Your portfolio is live now' }
      else
        format.html { render :new }
      end
    end
  end

  def show
    @portfolio_item = Portfol.find(params[:id])
  end

  def destroy
    @portfolio_item = Portfol.find(params[:id])
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfols_url, notice: 'Portfolio was removed.' }
      format.json { head :no_content }
    end
  end

  private
    def portfolio_params
      params.require(:portfol).permit(:title,
                                      :subtitle,
                                      :body,
                                      technologies_attributes: [:name])
    end

end
