class CharacterController < ApplicationController
  def index
    render json: Character.all,
      except: [:edad, :peso, :historia, :pelicula_id, :created_at, :updated_at]
  end

  def index_all
    render json: Character.all
  end

  def show
    character = Character.find(params[:id])
    render json: character,
    methods: [:pelicula]
  end

  def search
    character=""
    if params[:name]
      character = Character.find_by(name: params[:name])
    end
    if params[:age]
      character = Character.find_by(edad: params[:age])
    end
    if params[:movies]
      character = Character.find_by(pelicula_id: params[:movies])
    end
    render json: character,
    methods: [:pelicula]
  end

  def create
    character = Character.new(character_params)
    if character.save
      render json: {status: 'SUCCESS', message: 'Saved character', data: character}, status: :ok
    else
      render json: {status: 'ERROR', message: 'Character not saved', data: character.errors}, status: :unprocessable_entity
    end
  end

  def update
    character = Character.find(params[:id])

    if character.update!(character_params)
      render json: { status: 'SUCCESS', message: 'Updated character', data: character }, status: :ok
    else
      render json: { status: 'ERROR', message: 'Character not updated', data: character.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    character = Character.find(params[:id])
    render json: {status: 'SUCCESS', message: 'Deleted character', data: character}, status: :ok
  end

  private
  def character_params
    params.require(:character).permit(
      :imagen, :nombre, :edad, :peso, :historia, :pelicula_id)
  end
end

# render json: appointment.to_json(include: [:doctor, :patient])