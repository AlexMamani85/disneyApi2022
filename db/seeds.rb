# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)




accion = Genero.create(nombre:"Acción", imagen:"https://i.blogs.es/faf850/1527687416256_portada-espinofv2/1366_2000.jpg")
aventuras = Genero.create(nombre: "Aventuras", imagen:"https://www.publicdomainpictures.net/pictures/290000/nahled/mountain-adventure.jpg")
ficcion = Genero.create(nombre: "Ciencia Ficción", imagen:"https://www.publicdomainpictures.net/pictures/340000/nahled/alien-twist.jpg")
fantasia = Genero.create(nombre: "Fantasía", imagen:"https://www.publicdomainpictures.net/pictures/160000/nahled/fantasy-planet-with-hot-air-balloon.jpg")
musical = Genero.create(nombre: "Musical", imagen:"https://live.staticflickr.com/65535/50707833251_59a467a785_b.jpg")
terror = Genero.create(nombre: "Terror", imagen:"https://live.staticflickr.com/8389/8487805650_34287a2d07_b.jpg")


peliSociedad = Pelicula.create(imagen: "https://pics.filmaffinity.com/Sociedad_Secreta_de_Hijos_Reales-142777123-large.jpg", titulo: "La sociedad secreta de hijos reales", calificacion: 4, genero: accion) 
peliJungle = Pelicula.create(imagen: "https://pics.filmaffinity.com/Jungle_Cruise-659460230-large.jpg", titulo: "Jungle Cruise", calificacion: 5, genero: accion)
peliLightyear = Pelicula.create(imagen: "https://lumiere-a.akamaihd.net/v1/images/p_243_ster_lightyear_9209f1b3.jpeg", titulo: "Lightyear", calificacion: 4, genero: aventuras)
peliDrStrange = Pelicula.create(imagen: "https://es.web.img3.acsta.net/pictures/22/04/07/11/43/1839314.jpg", titulo: "Doctor Strange en el Multiverso de la Locura", calificacion: 5, genero: aventuras)
peliWalle = Pelicula.create(imagen: "https://m.media-amazon.com/images/I/51tfQp59aAL._SY445_.jpg", titulo: "WALL·E", calificacion: 4, genero: ficcion)
peliMorbius = Pelicula.create(imagen: "https://es.web.img3.acsta.net/pictures/22/02/10/13/16/1386612.jpg", titulo: "Morbius", calificacion: 4, genero: fantasia)
peliEnredados = Pelicula.create(imagen: "https://es.web.img3.acsta.net/medias/nmedia/18/79/96/30/19541005.jpg", titulo: "Enredados", calificacion: 4, genero: musical)
peliAbracadabra = Pelicula.create(imagen: "https://cloudfront-us-east-1.images.arcpublishing.com/elespectador/RG6YBZEN7RAYHJXKWB6NO3FQTU.png", titulo: "Abracadabra", calificacion: 4, genero: terror)
peliMansion = Pelicula.create(imagen: "https://es.web.img2.acsta.net/medias/nmedia/18/89/78/99/20066719.jpg", titulo: "La mansión embrujada", calificacion: 4, genero: terror)



Character.create(imagen: "", nombre: "Princess Roxana", edad: 29, peso: 60, historia: "", pelicula: peliSociedad)
Character.create(imagen: "", nombre: "Queen Catherine", edad: 45, peso: 67, historia: "", pelicula: peliSociedad)
Character.create(imagen: "", nombre: "Professor James", edad: 30, peso: 65, historia: "", pelicula: peliSociedad)
Character.create(imagen: "", nombre: "Prince Joachim", edad: 40, peso: 79, historia: "", pelicula: peliJungle)
Character.create(imagen: "", nombre: "Lily Houghton", edad: 25, peso: 70, historia: "", pelicula: peliJungle)
Character.create(imagen: "", nombre: "Buzz Lightyear", edad: 5, peso: 2, historia: "", pelicula: peliLightyear)
Character.create(imagen: "", nombre: "Doctor Strange", edad: 40, peso: 60, historia: "", pelicula: peliDrStrange)
Character.create(imagen: "", nombre: "Wanda Maximoff", edad: 30, peso: 60, historia: "", pelicula: peliWalle)
Character.create(imagen: "", nombre: "Morbius", edad: 77, peso: 60, historia: "", pelicula: peliMorbius)
Character.create(imagen: "", nombre: "Martine Bancorft", edad: 30, peso: 74, historia: "", pelicula: peliMorbius)
Character.create(imagen: "", nombre: "Rapunzel", edad: 20, peso:60, historia: "Rapunzel, quien fue confinada a una torre cuando era pequeña, desea salir al mundo exterior. ", pelicula: peliEnredados)
Character.create(imagen: "", nombre: "Flynn Rider", edad: 25, peso: 60, historia: "Eugene Fitzherbert es un personaje ficticio que aparece en la película animada número 50 de Walt Disney Animation Studios", pelicula: peliEnredados)
Character.create(imagen: "", nombre: "Sarah Sanderson", edad: 45, peso: 60, historia: "", pelicula: peliAbracadabra)
Character.create(imagen: "", nombre: "Madame Leota", edad: 67, peso: 75, historia: "", pelicula: peliMansion)
Character.create(imagen: "", nombre: "Master Gracey", edad: 45, peso: 70, historia: "", pelicula: peliMansion)
