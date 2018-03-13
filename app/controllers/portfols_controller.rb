class PortfolsController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
  layout 'portfol'
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all

  def index
    @portfolio_item = Portfol.by_position
  end

  def sort
    params[:order].each do |key, value|
      Portfol.find(value[:id]).update(position: value[:position])
    end

    render plain: "OK"
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
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfols_path, notice: 'Your portfolio is live now' }
      else
        format.html { render :new }
      end
    end
  end

  def show
  end

  def destroy
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

    def set_portfolio
      @portfolio_item = Portfol.find(params[:id])
    end

end
