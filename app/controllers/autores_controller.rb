class AutoresController < ApplicationController
  def index
    @autores = Autor.all.order("id")
  end

  def new
    @autor = Autor.new
  end

  def show
    @autor = Autor.find(params[:id])
  end

  def create
    @autor = Autor.new(autor_params)
    if @autor.save
      redirect_to @autor
    else
      render :new
    end
  end

  def update
    @autor = Autor.find(params[:id])
    if @autor.update(autor_params)
      redirect_to autores_path #@autor
    else
      render :edit
    end
  end

  def edit
    @autor = Autor.find(params[:id])
  end

  def destroy
    autor = Autor.find(params[:id])
    autor.destroy

    redirect_to autores_path, notice: "The author was deleted successfully."
  end
# For security
  private
  def autor_params
    params.require(:autor).permit(:nombre, :apellido_paterno, :apellido_materno)
  end

end
