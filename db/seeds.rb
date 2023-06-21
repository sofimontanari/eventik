# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"
Message.destroy_all
Chatroom.destroy_all
Review.destroy_all
User.destroy_all
Estimation.destroy_all
EventType.destroy_all
Event.destroy_all

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
  address: "Humboldt 1968, Buenos Aires, Argentina",
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
  address: "Humboldt 4622, Buenos aires, Argentina",
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
  address: "Fitz Roy 2345, Palermo, Buenos Aires, Argentina",
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
user8 = User.create(
  email: "musica@gmail.com",
  password: "123456",
  name: "Diego Dicharri",
  user_name: "Rocker",
  supplier: true,
  business_name: "Profes Rockers",
  address: "Charcas 4752, Palermo, Buenos Aires, Argentina",
  description: "Somos un explosivo grupo de rock que te hará vibrar! Con nuestra música enérgica y potente, convertimos cada evento en una experiencia inolvidable. ¡Prepárate para dejarte llevar por el poder del rock! ¡Somos tu opción perfecta para un entretenimiento inigualable!. ",
  service_type: "Entretenimiento",
  duration: " Según el requerimiento del creador del evento, se evalúa el número de horas para realizar la cotización",
)

file = URI.open("http://agenciacomunica.soc.unicen.edu.ar/images/rock4.jpg")
user8.photos.attach(io: file, filename: "rock4.jpg", content_type: "image/jpg")

file = URI.open("http://agenciacomunica.soc.unicen.edu.ar/images/rock5.jpg")
user8.photos.attach(io: file, filename: "rock5.jpg" , content_type: "image/jpg")

file = URI.open("http://agenciacomunica.soc.unicen.edu.ar/images/rock1.jpeg")
user8.photos.attach(io: file, filename: "rock1.jpeg" , content_type: "image/jpeg")

file = URI.open("http://agenciacomunica.soc.unicen.edu.ar/images/rock2.jpeg")
user8.photos.attach(io: file, filename: "rock2.jpeg" , content_type: "image/jpeg")

cumpleanos_adultos8 = EventType.new(name: "Cumpleaños Adultos")
cumpleanos_adultos8.user_id = user8.id
cumpleanos_adultos8.save!

despedidas8 = EventType.new(name: "Despedidas")
despedidas8.user_id = user8.id
despedidas8.save!

user9 = User.create(
  email: "globo-fiesta@gmail.com",
  password: "123456",
  name: "glbo",
  user_name: "g-fiesta",
  supplier: true,
  business_name: "Globo Fiesta",
  address: "Paraguay 200, Palermo, Buenos Aires, Argentina",
  description: "Servicios de decoración de fiestas para todos tus eventos. En Globofiesta dispones de dos formas para disfrutar de nuestros servicios de decoración para fiestas y eventos, consúltanos para un presupuesto a medida y totalmente personalizado.",
  service_type: "Invitaciones & Decoración",
  duration: " Según el requerimiento del creador del evento, se evalúa el número de horas para realizar la cotización",
)

file = URI.open("https://globofiesta.com/wp-content/uploads/2019/12/Centro-cumple-unicornio-768x1024.jpg")
user9.photos.attach(io: file, filename: "Centro-cumple-unicornio-768x1024.jpg", content_type: "image/jpg")

file = URI.open("https://globofiesta.com/wp-content/uploads/2019/12/centro-34-a%C3%B1os-detalle-768x1024.jpg")
user9.photos.attach(io: file, filename: "centro-34-a%C3%B1os-detalle-768x1024.jpg" , content_type: "image/jpg")

file = URI.open("https://globofiesta.com/wp-content/uploads/2019/12/Columna-feliz-a%C3%B1o-526x1024.jpg")
user9.photos.attach(io: file, filename: "Columna-feliz-a%C3%B1o-526x1024.jpg" , content_type: "image/jpeg")

file = URI.open("https://globofiesta.com/wp-content/uploads/2019/12/Comunion-Jorge-789x1024.jpg")
user9.photos.attach(io: file, filename: "Comunion-Jorge-789x1024.jpg" , content_type: "image/jpeg")

cumpleanos_adultos9 = EventType.new(name: "Cumpleaños Adultos")
cumpleanos_adultos9.user_id = user9.id
cumpleanos_adultos9.save!

despedidas9 = EventType.new(name: "Despedidas")
despedidas9.user_id = user9.id
despedidas9.save!

casamientos9 = EventType.new(name: "Casamientos")
casamientos9.user_id = user9.id
casamientos9.save!


empresariales9 = EventType.new(name: "Empresariales")
empresariales9.user_id = user9.id
empresariales9.save!

bautismos9 = EventType.new(name: "Bautismos")
bautismos9.user_id = user9.id
bautismos9.save!

baby9 = EventType.new(name: "Baby Showers")
baby9.user_id = user9.id
baby9.save!

quince9 = EventType.new(name: "15 Años")
quince9.user_id = user9.id
quince9.save!

cumpleanos_infantiles9 = EventType.new(name: "Cumpleaños Infantiles")
cumpleanos_infantiles9.user_id = user9.id
cumpleanos_infantiles9.save!

user10 = User.create(
  email: "disfraz@gmail.com",
  password: "123456",
  name: "disfraz",
  user_name: "todo-disfraz",
  supplier: true,
  business_name: "todo disfraz",
  address: "Estados Unidos 200, San Telmo, Buenos Aires, Argentina",
  description: "Todo Disfraz es marca registrada de TD Eventos SRL y desde el año 2002, trabajamos desarrollando un nuevo concepto en servicios de alquiler de trajes y disfraces",
  service_type: "Disfraces & Accesorios",
  duration: "se prestan los disfracez por dias, pregunta para cotizar tus disfraces",
  includes: "Te ofrecemos una interesante variedad de trajes para eventos privados e institucionales, vestuario de cine, teatro y televisión, etc."
)

file = URI.open("https://www.tododisfraz.com.ar/wp-content/uploads/2016/12/Todo-Disfraz-Arlequ%C3%ADn-Siniestro-2621-300x450.jpg")
user10.photos.attach(io: file, filename: "Todo-Disfraz-Arlequ%C3%ADn-Siniestro-2621-300x450.jpg", content_type: "image/jpg")

file = URI.open("https://www.tododisfraz.com.ar/wp-content/uploads/2018/03/Todo-Disfraz-Atracador-La-Casa-de-Papel-2676.jpg")
user10.photos.attach(io: file, filename: "Todo-Disfraz-Atracador-La-Casa-de-Papel-2676.jpg" , content_type: "image/jpg")

file = URI.open("https://www.tododisfraz.com.ar/wp-content/uploads/2022/10/Todo-Disfraz-Crash-Test-Dummy-2779-300x450.jpg")
user10.photos.attach(io: file, filename: "Todo-Disfraz-Crash-Test-Dummy-2779-300x450.jpg" , content_type: "image/jpeg")

file = URI.open("https://www.tododisfraz.com.ar/wp-content/uploads/2016/07/Todo-Disfraz-P%C3%A1jaro-Loco-2567-300x450.jpg")
user10.photos.attach(io: file, filename: "Todo-Disfraz-P%C3%A1jaro-Loco-2567-300x450.jpg" , content_type: "image/jpeg")

empresariales10 = EventType.new(name: "Empresariales")
empresariales10.user_id = user10.id
empresariales10.save!

cumpleanos_infantiles10 = EventType.new(name: "Cumpleaños Infantiles")
cumpleanos_infantiles10.user_id = user10.id
cumpleanos_infantiles10.save!

user11 = User.create(
  email: "chef@gmail.com",
  password: "123456",
  name: "chef-privado",
  user_name: "takeachef",
  supplier: true,
  business_name: "Takeachef",
  address: "Vidal 500, Belgrano, Buenos Aires, Argentina",
  description: "¿Queres disfrutar de un servicio de restaurante único y personalizado sin moverte de casa? Elige un Chef Privado.",
  service_type: "Catering",
  duration: " Según el requerimiento del creador del evento, se evalúa el número de horas para realizar la cotización",
  includes: "Incluye experiencia personalizada, alimentos de la mas alta calidad y servicio completo de limpieza",
)

file = URI.open("https://img.freepik.com/vector-premium/chef-logo-diseno-vector-plantilla-restaurante-logo-silueta-chef-vector-cocina-logo_625890-149.jpg")
user11.photos.attach(io: file, filename: "hef-logo-diseno-vector-plantilla-restaurante-logo-silueta-chef-vector-cocina-logo_625890-149.jpg" , content_type: "image/jpeg")

file = URI.open("https://287524.fs1.hubspotusercontent-na1.net/hubfs/287524/Imported_Blog_Media/estaciones-de-trabajo-cocina-profesional-2-Dec-17-2022-07-23-41-8269-PM.jpg")
user11.photos.attach(io: file, filename: "estaciones-de-trabajo-cocina-profesional-2-Dec-17-2022-07-23-41-8269-PM.jpg", content_type: "image/jpg")

file = URI.open("https://revistaedu.co/wp-content/uploads/2020/04/chef-una-profesion-revista-edu-co-1024x573.jpg")
user11.photos.attach(io: file, filename: "chef-una-profesion-revista-edu-co-1024x573.jpg" , content_type: "image/jpg")

cumpleanos_adultos11 = EventType.new(name: "Cumpleaños Adultos")
cumpleanos_adultos11.user_id = user11.id
cumpleanos_adultos11.save!

despedidas11 = EventType.new(name: "Despedidas")
despedidas11.user_id = user11.id
despedidas11.save!

casamientos11 = EventType.new(name: "Casamientos")
casamientos11.user_id = user11.id
casamientos11.save!


empresariales11 = EventType.new(name: "Empresariales")
empresariales11.user_id = user11.id
empresariales11.save!

bautismos11 = EventType.new(name: "Bautismos")
bautismos11.user_id = user11.id
bautismos11.save!

baby11 = EventType.new(name: "Baby Showers")
baby11.user_id = user11.id
baby11.save!

quince11 = EventType.new(name: "15 Años")
quince11.user_id = user11.id
quince11.save!

cumpleanos_infantiles11 = EventType.new(name: "Cumpleaños Infantiles")
cumpleanos_infantiles11.user_id = user11.id
cumpleanos_infantiles11.save!

user12 = User.create(
  email: "casa@guerrero.com",
  password: "123456",
  name: "bert",
  user_name: "bert08",
  supplier: true,
  business_name: "Casa Guerrero",
  address: "Venezuela 136, San Telmo, Buenos Aires, Argentina",
  description: "Somos Ana, Teresa, Paula y Marcos, hermanos y miembros de la cuarta generación familiar de la casa.
  Trabajamos juntos con el objetivo de lograr que toda experiencia en Casa Guerrero sea linda y memorable.
  Por eso ofrecemos una organización integral de nuestros eventos a la que le damos forma en conjunto con cada cliente personalmente.",
  service_type: "Espacios",
  duration: "Se evaluará el número de horas para realizar la cotización",
  includes: "Proporcionamos ambientación de acuerdo al evento que realice con una cuota adicional",
  benefits: "Los eventos nocturnos se realizan hasta las 5 a.m."
)
puts "..."
baby12 = EventType.new(name: "Baby Showers")
baby12.user_id = user12.id
baby12.save!

quince12 = EventType.new(name: "15 Años")
quince12.user_id = user12.id
quince12.save!

cumpleanos_infantiles12 = EventType.new(name: "Cumpleaños Infantiles")
cumpleanos_infantiles12.user_id = user12.id
cumpleanos_infantiles12.save!

cumpleanos_adultos12 = EventType.new(name: "Cumpleaños Adultos")
cumpleanos_adultos12.user_id = user12.id
cumpleanos_adultos12.save!

despedidas12 = EventType.new(name: "Despedidas")
despedidas12.user_id = user12.id
despedidas12.save!

casamientos12 = EventType.new(name: "Casamientos")
casamientos12.user_id = user12.id
casamientos12.save!

empresariales12 = EventType.new(name: "Empresariales")
empresariales12.user_id = user12.id
empresariales12.save!

# user12.event_types = ["Cumpleaños Adultos", "Despedidas", "Casamientos", "Empresariales"]

file = URI.open("https://cdn0.casamientos.com.ar/vendor/6326/3_2/960/jpg/36-salon-casa-de-campo-dj-martin-guerrero-lluvia-de-papas-fotografo-eduardo-solodki-mendoza-argentina_7_106326-158206207575524.jpeg")
user12.photos.attach(io: file, filename: "36-salon-casa-de-campo-dj-martin-guerrero-lluvia-de-papas-fotografo-eduardo-solodki-mendoza-argentina_7_106326-158206207575524.jpeg", content_type: "image/jpg")

file = URI.open("https://media.infocielo.com/p/1fe9eece7663bd11828a1dbae487e753/adjuntos/299/imagenes/001/371/0001371192/887x0/smart/el-castillo-guerrero-domselaar-reabre-sus-puertas-como-es-la-visita-y-cuanto-cuestajpg.jpg")
user12.photos.attach(io: file, filename: "el-castillo-guerrero-domselaar-reabre-sus-puertas-como-es-la-visita-y-cuanto-cuestajpg.jpg", content_type: "image/jpg")

file = URI.open("https://cdn0.casamientos.com.ar/vendor/6759/3_2/960/jpg/camida1_7_136759-159889306781968.jpeg")
user12.photos.attach(io: file, filename: "camida1_7_136759-159889306781968.jpeg" , content_type: "image/jpg")

file = URI.open("https://cdn0.casamientos.com.ar/vendor/5414/3_2/960/jpg/romantico-3_7_115414-164511261097492.jpeg")
user12.photos.attach(io: file, filename: "romantico-3_7_115414-164511261097492.jpeg" , content_type: "image/jpg")

user13 = User.create(
  email: "queirolo@hacienda.com",
  password: "123456",
  name: "traverso",
  user_name: "traverso13",
  supplier: true,
  business_name: "Hacienda Queirolo",
  address: "Austria 350, Recoleta, Buenos Aires, Argentina",
  description: "La Hacienda Queirolo es un destino cautivador y pintoresco que ofrece el escenario perfecto para la celebración de eventos especiales. Situada en un entorno natural deslumbrante, en medio de viñedos y valles exuberantes, esta hacienda fusiona la belleza del paisaje con la elegancia y la tradición.",
  service_type: "Espacios",
  duration: "Se tomará en cuenta las horas solicitadas para realizar la cotización",
  includes: "Proporcionamos ambientación de acuerdo al evento que realice con una cuota adicional",
  benefits: "Ofrecemos show de caballos de paso y danza folclórica"
)
puts "..."
baby13 = EventType.new(name: "Baby Showers")
baby13.user_id = user13.id
baby13.save!

quince13 = EventType.new(name: "15 Años")
quince13.user_id = user13.id
quince13.save!


cumpleanos_adultos13 = EventType.new(name: "Cumpleaños Adultos")
cumpleanos_adultos13.user_id = user13.id
cumpleanos_adultos13.save!

despedidas13 = EventType.new(name: "Despedidas")
despedidas13.user_id = user13.id
despedidas13.save!

casamientos13 = EventType.new(name: "Casamientos")
casamientos13.user_id = user13.id
casamientos13.save!

empresariales13 = EventType.new(name: "Empresariales")
empresariales13.user_id = user13.id
empresariales13.save!

# user12.event_types = ["Cumpleaños Adultos", "Despedidas", "Casamientos", "Empresariales"]

file = URI.open("https://www.casahaciendaqueirolo.com/images/galeria/img03.jpg")
user13.photos.attach(io: file, filename: "img03.jpg", content_type: "image/jpg")

file = URI.open("https://www.casahaciendaqueirolo.com/images/galeria/img15.jpg")
user13.photos.attach(io: file, filename: "img15.jpg", content_type: "image/jpg")

file = URI.open("https://www.casahaciendaqueirolo.com/images/galeria/img17.jpg")
user13.photos.attach(io: file, filename: "img17.jpg", content_type: "image/jpg")

file = URI.open("https://www.casahaciendaqueirolo.com/images/galeria/img01.jpg")
user13.photos.attach(io: file, filename: "img01.jpg", content_type: "image/jpg")

user14 = User.create(
  email: "escape@hunt.com",
  password: "123456",
  name: "traverso",
  user_name: "traverso14",
  supplier: true,
  business_name: "Scape Hunt",
  address: "Larrea 100, Recoleta, Buenos Aires, Argentina",
  description: "Escape Hunt Buenos Aires es la opción ideal para festejos de cumpleaños infantiles. Organizá la próxima fiesta de cumpleaños de tus hijos en Escape Hunt para que ellos vivan un momento inolvidable junto a sus amigos. Nos ocupamos de todo: invitaciones, comida y bebida. Solo tenés que concentrarte en el escape: eso corre por cuenta de ellos.",
  service_type: "Espacios",
  duration: "2 horas",
  includes: "Un Game Master especializado para coordinar tu grupo de principio a fin.",
  benefits: "Panchos, hamburguesas, gaseosas y agua"
)
7
cumpleanos_infantiles14 = EventType.new(name: "Cumpleaños Infantiles")
cumpleanos_infantiles14.user_id = user14.id
cumpleanos_infantiles14.save!

cumpleanos_adultos14 = EventType.new(name: "Cumpleaños Adultos")
cumpleanos_adultos14.user_id = user14.id
cumpleanos_adultos14.save!

empresariales14 = EventType.new(name: "Empresariales")
empresariales14.user_id = user14.id
empresariales14.save!

# user12.event_types = ["Cumpleaños Adultos", "Despedidas", "Casamientos", "Empresariales"]

file = URI.open("https://people.com/thmb/E1i-7YhgkltVdmcIMHtHS3GNfi4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(734x99:736x101)/escape-room-121022-3-aed2b05ff90a4393ade6f2a0ce7dac32.jpg")
user14.photos.attach(io: file, filename: "escape-room-121022-3-aed2b05ff90a4393ade6f2a0ce7dac32.jpg", content_type: "image/jpg")

file = URI.open("https://cope-cdnmed.agilecontent.com/resources/jpg/4/9/1597212583994.jpg")
user14.photos.attach(io: file, filename: "1597212583994.jpg", content_type: "image/jpg")

file = URI.open("https://www.clarin.com/img/2019/02/06/YfSSNcO59_1256x620__1.jpg")
user14.photos.attach(io: file, filename: "YfSSNcO59_1256x620__1.jpg", content_type: "image/jpg")

file = URI.open("https://s2.abcstatics.com/media/sevilla/2020/09/14/s/escape-room-sevilla-kpBG--620x349@abc.jpg")
user14.photos.attach(io: file, filename: "escape-room-sevilla-kpBG--620x349@abc.jpg", content_type: "image/jpg")

user15 = User.create(
  email: "mago@julio.com",
  password: "123456",
  name: "julio",
  user_name: "juliom",
  supplier: true,
  business_name: "Mago Julio",
  address: "French 100, Recoleta, Buenos Aires, Argentina",
  description: "Show ideal para recepciones y fiestas informales. Se trata de acercar a distinos grupos y compartir con ellos increíbles juegos de magia y mentalismo. Todos los efectos son interactivos y dejarán a los invitados anonadados. La propuesta es ideal para aquellos que buscan agregar algo original y divertido a su fiesta.",
  service_type: "Entretenimiento",
  duration: "show de 2 horas a 3 horas",
  includes: "El show combina fascinante magia, mentalismo y humor. Es un espectáculo participativo que genera reacciones increibles y asegura una experiencia única e inolvidable."

)
puts "..."
cumpleanos_infantiles15 = EventType.new(name: "Cumpleaños Infantiles")
cumpleanos_infantiles15.user_id = user15.id
cumpleanos_infantiles15.save!

cumpleanos_adultos15 = EventType.new(name: "Cumpleaños Adultos")
cumpleanos_adultos15.user_id = user15.id
cumpleanos_adultos15.save!

empresariales15 = EventType.new(name: "Empresariales")
empresariales15.user_id = user15.id
empresariales15.save!

baby15 = EventType.new(name: "Baby Showers")
baby15.user_id = user15.id
baby15.save!

quince15 = EventType.new(name: "15 Años")
quince15.user_id = user15.id
quince15.save!

despedidas15 = EventType.new(name: "Despedidas")
despedidas15.user_id = user15.id
despedidas15.save!

# user12.event_types = ["Cumpleaños Adultos", "Despedidas", "Casamientos", "Empresariales"]

file = URI.open("https://i.ytimg.com/vi/socWUlNS-4I/maxresdefault.jpg")
user15.photos.attach(io: file, filename: "maxresdefault.jpg", content_type: "image/jpg")

file = URI.open("https://i.ytimg.com/vi/rL6NfD2woKk/maxresdefault.jpg")
user15.photos.attach(io: file, filename: "maxresdefault.jpg", content_type: "image/jpg")

file = URI.open("https://i.ytimg.com/vi/AvWSh_g4jTU/hqdefault.jpg")
user15.photos.attach(io: file, filename: "AvWSh_g4jTU/hqdefault.jpg", content_type: "image/jpg")

file = URI.open("https://eventosteambuilding.es/wp-content/uploads/2019/05/Magia.jpg")
user15.photos.attach(io: file, filename: "Magia.jpg", content_type: "image/jpg")

user16 = User.create(
  email: "instantanea@creativa.com",
  password: "123456",
  name: "mateo",
  user_name: "mteo55",
  supplier: true,
  business_name: "Instantánea Creativa",
  address: "Arévalo 738, Palermo, Buenos Aires, Argentina",
  description: "Instantánea Creativa es una empresa de fotografía que se especializa en capturar momentos únicos y emocionantes. Nuestro enfoque principal está en la fotografía de eventos, como bodas, fiestas y celebraciones especiales. Nos esforzamos por capturar la esencia y la atmósfera de cada ocasión, creando recuerdos duraderos para nuestros clientes",
  service_type: "Fotografía",
  duration: "Personalizamos nuestros servicios de acuerdo con las necesidades de cada evento",
  includes: "Sesión de fotos previa al evento, cobertura completa del evento, edición y retoque de imágenes, entrega en formato digital.",
  benefits: "Fotógrafos profesionales altamente calificados, equipo de última generación, entrega rápida de las imágenes, experiencia en capturar momentos especiales."
)

cumpleanos_infantiles16 = EventType.new(name: "Cumpleaños Infantiles")
cumpleanos_infantiles16.user_id = user16.id
cumpleanos_infantiles16.save!

cumpleanos_adultos16 = EventType.new(name: "Cumpleaños Adultos")
cumpleanos_adultos16.user_id = user16.id
cumpleanos_adultos16.save!

empresariales16 = EventType.new(name: "Empresariales")
empresariales16.user_id = user16.id
empresariales16.save!

baby16 = EventType.new(name: "Baby Showers")
baby16.user_id = user16.id
baby16.save!

quince16 = EventType.new(name: "15 Años")
quince16.user_id = user16.id
quince16.save!

despedidas16 = EventType.new(name: "Despedidas")
despedidas16.user_id = user16.id
despedidas16.save!

casamientos16 = EventType.new(name: "Casamientos")
casamientos16.user_id = user16.id
casamientos16.save!

bautismos16 = EventType.new(name: "Bautismos")
bautismos16.user_id = user16.id
bautismos16.save!

# user12.event_types = ["Cumpleaños Adultos", "Despedidas", "Casamientos", "Empresariales"]

file = URI.open("https://www.theressa.net/images/articles/5cf18d0eba5bf-modelo.jpg")
user16.photos.attach(io: file, filename: "5cf18d0eba5bf-modelo.jpg", content_type: "image/jpg")

file = URI.open("https://expertphotography.b-cdn.net/wp-content/uploads/2020/07/social-media-for-photographers-follow-1.jpg")
user16.photos.attach(io: file, filename: "social-media-for-photographers-follow-1.jpg", content_type: "image/jpg")

file = URI.open("https://elcomercio.pe/resizer/87XsKUad4INRbZPUf53Jpdq0X3Q=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/ZAGDMPPK5ZGWPERBWVHKIXXLCI.jpg")
user16.photos.attach(io: file, filename: "ZAGDMPPK5ZGWPERBWVHKIXXLCI.jpg", content_type: "image/jpg")

file = URI.open("https://www.superprof.co/blog/wp-content/uploads/2017/12/fotografo-pro-300x200.jpg")
user16.photos.attach(io: file, filename: "fotografo-pro-300x200.jpg", content_type: "image/jpg")

user17 = User.create(
  email: "delicias@gastronomicas.com",
  password: "123456",
  name: "fred",
  user_name: "fredo55",
  supplier: true,
  business_name: "Delicias Gastronómicas",
  address: "Cnel. Niceto Vega 450, Palermo, Buenos Aires, Argentina",
  description: "Delicias Gastronómicas es una empresa de catering que se especializa en ofrecer servicios culinarios excepcionales para eventos y ocasiones especiales. Nos enorgullece brindar una experiencia gastronómica única y satisfacer los paladares más exigentes. Desde menús elegantes hasta platos temáticos creativos, nos adaptamos a las necesidades de nuestros clientes para proporcionar una experiencia culinaria memorable.",
  service_type: "Catering",
  duration: "Personalizamos nuestros servicios de acuerdo con la duración y el tipo de evento.",
  includes: "Diseño de menú personalizado, preparación y presentación de platos, servicio de camareros profesionales, coordinación logística, servicio de bar y bebidas (opcional).",
  benefits: "Ingredientes frescos y de alta calidad, menús adaptados a preferencias dietéticas y restricciones alimentarias, presentación elegante, atención personalizada, experiencia culinaria única."
)

cumpleanos_adultos17 = EventType.new(name: "Cumpleaños Adultos")
cumpleanos_adultos17.user_id = user17.id
cumpleanos_adultos17.save!

empresariales17 = EventType.new(name: "Empresariales")
empresariales17.user_id = user17.id
empresariales17.save!

baby17 = EventType.new(name: "Baby Showers")
baby17.user_id = user17.id
baby17.save!

quince17 = EventType.new(name: "15 Años")
quince17.user_id = user17.id
quince17.save!

despedidas17 = EventType.new(name: "Despedidas")
despedidas17.user_id = user17.id
despedidas17.save!

casamientos17 = EventType.new(name: "Casamientos")
casamientos17.user_id = user17.id
casamientos17.save!

bautismos17 = EventType.new(name: "Bautismos")
bautismos17.user_id = user17.id
bautismos17.save!

# user12.event_types = ["Cumpleaños Adultos", "Despedidas", "Casamientos", "Empresariales"]

file = URI.open("https://atelierdellalbergo.it/wp-content/uploads/2021/12/finger-food-plastica.jpg")
user17.photos.attach(io: file, filename: "finger-food-plastica.jpg", content_type: "image/jpg")

file = URI.open("https://img.freepik.com/fotos-premium/apetitosos-aperitivos-mesa-buffet-evento-cerca_120897-1064.jpg")
user17.photos.attach(io: file, filename: "apetitosos-aperitivos-mesa-buffet-evento-cerca_120897-1064.jpg", content_type: "image/jpg")

file = URI.open("https://t3.ftcdn.net/jpg/02/71/96/34/360_F_271963483_tJYIqsd4RvUgODqV3IbX3EmTF7hU6b4p.jpg")
user17.photos.attach(io: file, filename: "360_F_271963483_tJYIqsd4RvUgODqV3IbX3EmTF7hU6b4p.jpg", content_type: "image/jpg")

file = URI.open("https://img.freepik.com/foto-gratis/comida-canapes_624325-2035.jpg")
user17.photos.attach(io: file, filename: "comida-canapes_624325-2035.jpg", content_type: "image/jpg")

puts "Seed finalizada"
