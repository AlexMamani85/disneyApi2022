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
