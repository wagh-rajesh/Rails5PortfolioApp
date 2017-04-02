class PortFoliosController < ApplicationController
  def index
    @portfolio_items = PortFolio.all
  end

  def new
  	@portfolio_item = PortFolio.new
  end

  def create
    @portfolio_item = PortFolio.new(params.require(:port_folio).permit(:title, :subtitle, :body))
    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to port_folios_path, notice: 'PortFolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  	@portfolio_item = PortFolio.find(params[:id])
  end

  def update
  	@portfolio_item = PortFolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(params.require(:port_folio).permit(:title, :subtitle, :body))
        format.html { redirect_to port_folios_path, notice: 'PortFolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
  	@portfolio_item = PortFolio.find(params[:id])
  end
end