class PortfolsController < ApplicationController
  def index
    @portfolio_item = Portfol.all
  end
end
