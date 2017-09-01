class PortFoliosController < ApplicationController
  
  layout "portfolio"

  def index
    @portfolio_items = PortFolio.all
  end

  def ruby_on_rails
    @ror_portfolio_items = PortFolio.ror_items
  end

  def new
  	@portfolio_item = PortFolio.new
    3.times{ @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = PortFolio.new(portfolio_params)
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
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to port_folios_path, notice: 'PortFolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
  	@portfolio_item = PortFolio.find(params[:id])
  end

  def destroy
  	@portfolio_item = PortFolio.find(params[:id])
  	@portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to port_folios_url, notice: 'Record was successfully destroyed.' }
    end
  end

  private

  def portfolio_params
    params.require(:port_folio).permit(:title,
                                        :subtitle,
                                        :body,
                                        technologies_attributes: [:name]
                                      )
  end  

end

