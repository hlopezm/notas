class FederalsController < ApplicationController
  def new
    @page_title = 'Agregar Diputado Federal'
    @federal = Federal.new
  end

  def create
    @federal = Federal.new(federal_params)
    if @federal.save
      flash[:notice] = "Diputado Federal Creado"
      redirect_to federals_path
    else
      render 'new'
    end
  end

  def edit
    @federal = Federal.find(params[:id])
  end

  def destroy
    @federal = Federal.find(params[:id])

    @federal.destroy

    flash[:notice] = "Diputado Eliminado"
    redirect_to federals_path
  end

  def index
    @federals = Federal.all
  end

  private
  def federal_params
    params.require(:federal).permit(:first_name, :last_name, :report_id)
  end
end
