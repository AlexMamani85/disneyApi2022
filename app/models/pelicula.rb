class Pelicula < ApplicationRecord
  belongs_to :genero

  def character
    characters = Character.where(pelicula_id: id)
    rpta = []
    (0..characters.length - 1).each do |i|
      rpta << { id: characters[i].id,
                imagen: characters[i].imagen,
                nombre: characters[i].nombre,
                edad: characters[i].edad,
                peso: characters[i].peso,
                historia: characters[i].historia,
                pelicula_id: characters[i].pelicula_id }
    end
    rpta
  end
end
