class PeliculaController < ApplicationController
  def index
    pelicula = Pelicula.all
    render json: pelicula, except: %i[id calificacion genero_id updated_at]
  end

  def show
    pelicula = Pelicula.find(params[:id])
    render json: pelicula,
      methods: [:character]
  end

  def search
    peliculas = ""
    # TODO: Probar name con espacios
    if params[:name]
      peliculas = Pelicula.where(name: params[:name])
    end
    if params[:genre]
      peliculas = Pelicula.where(genero_id: params[:genre])
    end
    if params[:order] == 'ASC'
      peliculas = peliculas.order('created_at ASC')
    end
    if params[:order] == 'DESC'
      peliculas = peliculas.order('created_at DESC')
    end

    rpta = []
    (0..peliculas.length - 1).each do |i|
      rpta << { id: peliculas[i].id,
                imagen: peliculas[i].imagen,
                titulo: peliculas[i].titulo,
                calificacion: peliculas[i].calificacion,
                genero_id: peliculas[i].genero_id }
    end
    render json: rpta
  end

  def create
    pelicula = Pelicula.new(pelicula_params)
    if pelicula.save
      render json: { status: 'SUCCESS', message: 'Saved pelicula', data: pelicula }, status: :ok
    else
      render json: { status: 'ERROR', message: 'Pelicula not saved', data: pelicula.errors }, status: :unprocessable_entity
    end
  end

  def update
    pelicula = Pelicula.find(params[:id])

    if pelicula.update!(pelicula_params)
      render json: { status: 'SUCCESS', message: 'Updated pelicula', data: pelicula }, status: :ok
    else
      render json: { status: 'ERROR', message: 'Pelicula not updated', data: pelicula.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    pelicula = Pelicula.find(params[:id])
    render json: {status: 'SUCCESS', message: 'Deleted pelicula', data: pelicula}, status: :ok
  end

  private

  def pelicula_params
    params.require(:pelicula).permit(
      :imagen, :titulo, :calificacion, :genero_id
    )
  end

end
