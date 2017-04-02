class PortFoliosController < ApplicationController
  def index
    @portfolio_items = PortFolio.all
  end
end