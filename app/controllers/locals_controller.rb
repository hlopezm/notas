class LocalsController < ApplicationController
  def new
    @page_title = 'Agregar Diputado Local'
    @local = Local.new
  end

  def create
    @local = Local.new(local_params)
    if @local.save
      flash[:notice] = "Diputado Local Creado"
      redirect_to locals_path
    else
      render 'new'
    end
  end

  def edit
    @local = Local.find(params[:id])
  end

  def destroy
    @local = Local.find(params[:id])

    @local.destroy

    flash[:notice] = "Diputado Eliminado"
    redirect_to locals_path
  end

  def index
    @locals = Local.all
  end

  private
  def local_params
    params.require(:local).permit(:first_name, :last_name, :report_id)
  end
end
