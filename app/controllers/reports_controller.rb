class ReportsController < ApplicationController
  def new
    @page_title = 'Agregar Reporte'
    @report = Report.new
    @category = Category.new
    @local = Local.new
    @federal = Federal.new
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      flash[:notice] = "Reporte Creado"
      redirect_to reports_path
    else
      render 'new'
    end
  end

  def update
    @report = Report.find(params[:id])

    @report.update(report_params)

    flash[:notice] = "Reporte Actualizado"
    redirect_to reports_path
  end

  def edit
    @report = Report.find(params[:id])
  end

  def destroy
    @report = Report.find(params[:id])

    @report.destroy

    flash[:notice] = "Reporte Eliminado"
    redirect_to reports_path
  end

  def index
    @reports = Report.all
    @categories = Category.all
  end

  def show
    @report = Report.find(params[:id])
    @categories = Category.all

  end

  private
  def report_params
    params.require(:report).permit(:nombre, :category_id, :local_id, :federal_id, :pdte_mpal, :renovacion_cdm, :situacion_mpio, :situacion_cdm, :temas_reunion, :observaciones, :image)
  end
end
