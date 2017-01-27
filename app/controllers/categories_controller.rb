class CategoriesController < ApplicationController
  def new
    @page_title = 'Agregar Categoría'
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "Categoría Creada"
      redirect_to categories_path
    else
      render 'new'
    end
  end

  def update
    @category = Category.find(params[:id])

    @category.update(category_params)

    flash[:notice] = "Categoría Actualizada"
    redirect_to categories_path
  end

  def edit
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])

    @category.destroy

    flash[:notice] = "Categoría Eliminada"
    redirect_to categories_path
  end

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @reports = @category.reports
  end

  private
  def category_params
    params.require(:category).permit(:name, :report_id)
  end
end
