class LibrosController < ApplicationController
  def index
    @libros = Libro.all.order("id")
    @autores = Autor.all
  end

  def new
    @libro = Libro.new
    puts "Hello new, geeks"
  end

  def create
    @libro = Libro.create(libro_params)
    if @libro.save
      redirect_to @libro #libros_path
    else
      render :new
    end
  end

  def show
    @libro = Libro.find(params[:id])
  end

  def edit
    @libro = Libro.find(params[:id])
  end

  def update
    @libro = Libro.find(params[:id])
    puts "Hello, I'am here!"
    if @libro.update(libro_params)
      redirect_to libros_path
    else
      render :edit
    end
  end

  def destroy
    libro = Libro.find(params[:id])
    libro.destroy

    flash[:notice] = "The book was deleted successfully."
    redirect_to libros_path
  end

private
  def libro_params
    params.require(:libro).permit(:titulo, :precio, :descripcion, :fecha_publicacion, :autor_id, :image_url)
  end

end
