# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"
EventType.destroy_all
User.destroy_all
Event.destroy_all
Estimation.destroy_all
puts "Creando Usuarios"

user1 = User.create(
  email: 'liopark@gmail.com',
  password: "123456",
  name: "Lionel",
  user_name: "chriscoding23",
  supplier: true,
  business_name: "Project Lio Park",
  address: "Avenida Monroe 1699, Belgrano. C1428, CABA",
  description: "Somos un parque de camas elásticas y juegos, gestionado por padres formados en educación física.
  Proyecto Lío es un espacio pensado tanto para niños y jóvenes, como para adultos acompañantes.
  ¡Es el lugar ideal para pasar un cumpleaños divertido, lleno de aventura y mucho salto!",
  service_type: "Espacios",
  capacity: 45,
  duration: "3 hs de pura diversión!",
  includes: "Snacks & Bebidas libres. Catering a elección.",
  benefits: "¡El cumpleañero no paga! Además tenemos un profesor excludsivo para el grupo.",
  notes: "Menores de 2 años deben estar acompañados de un adulto."
)
file = URI.open("https://wips.digital/wp-content/uploads/2022/03/jump-1.png")
user1.photos.attach(io: file, filename: "jump-1.png", content_type: "image/jpg")

file = URI.open("https://www.smgusta.com.ar/4052-thickbox_default/jump-in-trampoline-park-bahia-blanca.jpg")
user1.photos.attach(io: file, filename: "jump-in-trampoline-park-bahia-blanca.jpg", content_type: "image/jpg")

file = URI.open("https://jumperpark.cl/wp-content/uploads/2022/06/JUMPER-segunda-sesion-web_JUMPER-sesion2-84-600x400-1.png")
user1.photos.attach(io: file, filename: "JUMPER-segunda-sesion-web_JUMPER-sesion2-84-600x400-1.png" , content_type: "image/png")

file = URI.open("https://jumperpark.cl/wp-content/uploads/2022/06/JUMPER-segunda-sesion-web_JUMPER-sesion2-269-1-600x400-1.png")
user1.photos.attach(io: file, filename: "JUMPER-segunda-sesion-web_JUMPER-sesion2-269-1-600x400-1.png" , content_type: "image/png")
puts "..."
cumpleanos_infantiles1 = EventType.new(name: "Cumpleaños Infantiles")
cumpleanos_infantiles1.user_id = user1.id
cumpleanos_infantiles1.save!

user2 = User.create(
  email: "sofi@gmail.com",
  password: "123456",
  name: "Sofía",
  user_name: "sofimontanari",
  supplier: false
)

user3 = User.create(
  email: "casaleon@gmail.com",
  password: "123456",
  name: "Leon",
  user_name: "casa_leon",
  supplier: true,
  business_name: "Casa León Rooftop Cantina",
  address: "Humboldt 1968, Buenos Aires",
  description: "Somos el mejor espacio para reuniones de todo CABA, preparate para una experiencia única.",
  service_type: "Espacios",
  capacity: 200,
  duration: "El horario de cierre es a las 4 am",
  includes: "Cocteles, restaurante, comida y salon de baile.",
  notes: "Sólo apto para mayores de edad"
)
puts "..."
cumpleanos_adultos3 = EventType.new(name: "Cumpleaños Adultos")
cumpleanos_adultos3.user_id = user3.id
cumpleanos_adultos3.save!

despedidas3 = EventType.new(name: "Despedidas")
despedidas3.user_id = user3.id
despedidas3.save!

casamientos3 = EventType.new(name: "Casamientos")
casamientos3.user_id = user3.id
casamientos3.save!
5

empresariales3 = EventType.new(name: "Empresariales")
empresariales3.user_id = user3.id
empresariales3.save!

# user3.event_types = ["Cumpleaños Adultos", "Despedidas", "Casamientos", "Empresariales"]

file = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/1a/a4/19/f5/rio-negro-restaurante.jpg")
user3.photos.attach(io: file, filename: "rio-negro-restaurante.jpg" , content_type: "image/jpg")

file = URI.open("https://img.restaurantguru.com/r757-Rio-Restaurante-interior.jpg")
user3.photos.attach(io: file, filename: "r757-Rio-Restaurante-interior.jpg" , content_type: "image/jpg")

file = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/1a/a4/1a/03/rio-negro-restaurante.jpg")
user3.photos.attach(io: file, filename: "rio-negro-restaurante.jpg" , content_type: "image/jpg")

file = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/1c/f6/ca/d4/photo0jpg.jpg")
user3.photos.attach(io: file, filename: "photo0jpg.jpg", content_type: "image/jpg")

user4 = User.create(
  email: "varon@gmail.com" ,
  password: "123456",
  name: "David",
  user_name: "dvaron2099",
  supplier: false
)

user5 = User.create(
  email: "fotos@gmail.com",
  password: "123456",
  name: "Carlitos",
  user_name: "chrisCoding23",
  supplier: true,
  business_name: "CasaEma Photo",
  address: "humboldt 4622, Buenos aires, Argentina",
  description: "Somos un estudio boutique de fotografía, con base en Buenos Aires, dedicado a la fotografía de moda, publicidad, productos, books, editoriales, campañas.
  Tenemos más de 10 años de experiencia, algunos clientes grandes, y muchos pequeños, personas, proyectos y emprendimientos.",
  service_type: "Fotografía",
  duration: "3 hs tiros y grabación!",
  includes: " fotos con diferentes lentes, grabación 4k y drone",
  benefits: "Fotoshop para 40 fotos"
)
puts "..."
cumpleanos_adultos5 = EventType.new(name: "Cumpleaños Adultos")
cumpleanos_adultos5.user_id = user5.id
cumpleanos_adultos5.save!

despedidas5 = EventType.new(name: "Despedidas")
despedidas5.user_id = user5.id
despedidas5.save!

casamientos5 = EventType.new(name: "Casamientos")
casamientos5.user_id = user5.id
casamientos5.save!


empresariales5 = EventType.new(name: "Empresariales")
empresariales5.user_id = user5.id
empresariales5.save!

bautismos5 = EventType.new(name: "Bautismos")
bautismos5.user_id = user5.id
bautismos5.save!

baby5 = EventType.new(name: "Baby Showers")
baby5.user_id = user5.id
baby5.save!

quince5 = EventType.new(name: "15 Años")
quince5.user_id = user5.id
quince5.save!

cumpleanos_infantiles5 = EventType.new(name: "Cumpleaños Infantiles")
cumpleanos_infantiles5.user_id = user5.id
cumpleanos_infantiles5.save!

# user5.event_types = ["Cumpleaños Infantiles", "Cumpleaños Adultos", "Despedidas",  "Casamientos", "Bautismos", "Baby Showers", "Empresariales", "15 Años"]


file = URI.open("https://static.wixstatic.com/media/f5bc95_8e0a9d88655d4c4c899e48c0f7d2d8e2~mv2.jpg/v1/fill/w_1927,h_1288,al_c,q_90,usm_0.66_1.00_0.01,enc_auto/f5bc95_8e0a9d88655d4c4c899e48c0f7d2d8e2~mv2.jpg")
user5.photos.attach(io: file, filename: "f5bc95_8e0a9d88655d4c4c899e48c0f7d2d8e2~mv2.jpg" , content_type: "image/jpg")

file = URI.open("https://static.wixstatic.com/media/f5bc95_ded3fd65d2ea424f98e116158f90f0be~mv2.jpg/v1/fill/w_874,h_1288,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/f5bc95_ded3fd65d2ea424f98e116158f90f0be~mv2.jpg")
user5.photos.attach(io: file, filename: "f5bc95_ded3fd65d2ea424f98e116158f90f0be~mv2.jpg" , content_type: "image/jpg")

file = URI.open("https://static.wixstatic.com/media/f5bc95_8e0a9d88655d4c4c899e48c0f7d2d8e2~mv2.jpg/v1/fill/w_1927,h_1288,al_c,q_90,usm_0.66_1.00_0.01,enc_auto/f5bc95_8e0a9d88655d4c4c899e48c0f7d2d8e2~mv2.jpg")
user5.photos.attach(io: file, filename: "f5bc95_8e0a9d88655d4c4c899e48c0f7d2d8e2~mv2.jpg" , content_type: "image/jpg")

file = URI.open("https://static.wixstatic.com/media/f5bc95_1cfbb9f4f3af4974b128512fab349d7f~mv2.jpg/v1/fill/w_2940,h_1736,al_c,q_90,usm_0.66_1.00_0.01,enc_auto/f5bc95_1cfbb9f4f3af4974b128512fab349d7f~mv2.jpg")
user5.photos.attach(io: file, filename: "f5bc95_1cfbb9f4f3af4974b128512fab349d7f~mv2.jpg" , content_type: "image/jpg")

user6 = User.create(
  email: "Figueroa@gmail.com" ,
  password: "123456",
  name: "Christopher",
  user_name: "chriscoding23",
  supplier: false
)

user7 = User.create(
  email: "bertin@traverso.com",
  password: "123456",
  name: "bert",
  user_name: "bert08",
  supplier: true,
  business_name: "Dashing Drink",
  address: "Fitz Roy 2345, Palermo, Buenos Aires",
  description: "Nuestro servicio de bartenders para eventos ofrece una experiencia completa y profesional de coctelería para todo tipo de ocasiones especiales. Ya sea que estés organizando una boda, una fiesta de cumpleaños, una reunión corporativa o cualquier otro evento, nuestro equipo de bartenders altamente capacitados está listo para brindarte un servicio excepcional.",
  service_type: "Catering",
  duration: " Según el requerimiento del creador del evento, se evalúa el número de horas para realizar la cotización",
  includes: " Proporcionamos una barra móvil totalmente equipada que se adapta a cualquier espacio y decoración, trabajaremos contigo para crear un menú de bebidas personalizado que se ajuste a tus gustos y preferencias.",
  benefits: " Nuestros bartenders también pueden encargarse de la gestión del inventario, la compra de los suministros necesarios y la limpieza de la barra."
)
puts "..."
cumpleanos_adultos7 = EventType.new(name: "Cumpleaños Adultos")
cumpleanos_adultos7.user_id = user7.id
cumpleanos_adultos7.save!

despedidas7 = EventType.new(name: "Despedidas")
despedidas7.user_id = user7.id
despedidas7.save!

casamientos7 = EventType.new(name: "Casamientos")
casamientos7.user_id = user7.id
casamientos7.save!


empresariales7 = EventType.new(name: "Empresariales")
empresariales7.user_id = user7.id
empresariales7.save!

# user7.event_types = ["Cumpleaños Adultos", "Despedidas", "Casamientos", "Empresariales"]

file = URI.open("https://housepartybartenders.co.uk/wp-content/uploads/2020/04/bartender-hire.jpg")
user7.photos.attach(io: file, filename: "bartender-hire.jpg " , content_type: "image/jpg")

file = URI.open("https://gobaruae.com/mt-content/uploads/2015/12/go-bar-gallery-barman-show-dubai-uae-2.jpg")
user7.photos.attach(io: file, filename: "go-bar-gallery-barman-show-dubai-uae-2.jpg" , content_type: "image/jpg")

file = URI.open("https://media-front.elmostrador.cl/2023/06/WORLD_CLASS_FINAL_2023_16-700x428.jpg")
user7.photos.attach(io: file, filename: "WORLD_CLASS_FINAL_2023_16-700x428.jpg" , content_type: "image/jpg")

file = URI.open("https://gobaruae.com/mt-content/uploads/2015/12/go-bar-gallery-barman-show-dubai-uae-4.jpg")
user7.photos.attach(io: file, filename: "go-bar-gallery-barman-show-dubai-uae-4.jpg" , content_type: "image/jpg")

User8 = User.create(
  email: "bertintraverso@gmail.com",
  password: "123456",
  name: "Bertín",
  user_name: "bertints",
  supplier: false)

  puts "Se crearon 8 usuarios"
  puts "creando evento"
event1 = Event.create(
  name: "Cumpleaños Manu",
  address: "Buenos Aires, Argentina",
  date: Date.new(2023, 7, 18),
  status: 'En proceso',
  user_id: user2.id,
  event_type_id: cumpleanos_infantiles1.id
)
puts "creando estimaciones"
estimation1 = Estimation.create(
  price: 30.00,
  delivery_date: Date.new(2023, 7, 18),
  status: 'En Negociación',
  comments: 'Quiero negociar el precio',
  event_id: event1.id,
  user_id: user1.id
)

estimation2 = Estimation.create(
  delivery_date: Date.new(2023, 7, 18),
  status: 'Pendiente',
  event_id: event1.id,
  user_id: user5.id
)

puts "seed creada"

# event1.event_type = "Cumpleaños Infantiles"
# event1.user = user1
# user9 = User.create (
#   email: "maria@gmail.com",
#   password: "123456",
#   name: "María",
#   user_name: "sofimontanari",
#   supplier: true,
#   business_name: "Super Kits",
#   address: "Av. Corrientes 632, C1043 CABA",
#   description: "Ofrecemos kits imprimibles en formato digital, no editables, listos para imprimir. Nuestros kits traen diseños de invitación, Cierrabolsas, Cake toppers, Banderines, Cajas para pochoclos, envolotorios para candy bar.",
#   service_type: "Invitaciones & Decoración",
#   includes: "Todos nuestros kits imprimibles contienen archivos jpg, de alta resolución, en tamaño A4, más un poster que es tamaño A3. ",
#   benefits: "Con la compra del kit te regalamos un diseño extra a elección.",
#   notes: "Recibirás un link de descarga de dropbox, con todas las instrucciones necesarias, para descargarlo, y para una correcta impresión, ademas de ofrecerte asesoramiento y soporte antes, durante y despues de la descarga, cada A4 viene con su recomendación sobre que tipo de papel necesitas para imprimir."
# )

# file = URI.open("")
# user9.photos.attach(io: file, filename: "" , content_type: "image/jpg")

# file = URI.open("")
# user9.photos.attach(io: file, filename: "" , content_type: "image/jpg")

# file = URI.open("")
# user9.photos.attach(io: file, filename: "" , content_type: "image/jpg")

# file = URI.open("")
# user9.photos.attach(io: file, filename: "" , content_type: "image/jpg")
