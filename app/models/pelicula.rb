class Pelicula < ApplicationRecord
  belongs_to :genero
  has_many :peliculas
end
