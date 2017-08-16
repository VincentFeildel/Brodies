# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# utilisateur du site
# User.create(email: "vincent.feildel@gmail.com", password: "123456", is_supplier: false)

# # fournisseur d'activité
# User.create(email: "karting3000@gmail.com", password: "123456", is_supplier: true)

# # Activité de Karting
# Activity.create(title: "Karting Prestige", description: "Jean-Michel vous propose la course de votre vie", is_outdoor: true, category: "Karting", capacity: 8, user_id: 2, address: "Route des Mayons", zip_code: 83340, city: "Le Luc")

# # Deux pricings associés:
# Pricing.create(description: "Course de 30min", amount: 40, price_type: "par personne", activity_id: 1)
# Pricing.create(description: "Course de 1h", amount: 70, price_type: "par personne", activity_id: 1)


# 10.times do
#   user = User.create(email: Faker::Internet.email, password: "123456", is_supplier: false)
#   supplier = User.create(email: Faker::Internet.email, password: "123456", is_supplier: true)
#   g_o_t = Faker::GameOfThrones.character
#   address = Faker::Address.new
#   activity = Activity.new(title: "Karting #{g_o_t}", description: "#{g_o_t} vous propose la course de votre vie", is_outdoor: true, category: "Karting", capacity: 8, address: Faker::Address.street_address, zip_code: Faker::Address.zip_code, city: Faker::Address.city)
#   activity.photo_url = 'http://www.kartcom.com/com_kart_asset/9174/LM-Karting.jpg'
#   activity.user = supplier
#   activity.save
# end

# ACTIVITE--------------------------------------------------------------------
supplier = User.create(email: Faker::Internet.email, password: "123456", is_supplier: true)

a = Activity.new(is_outdoor: true, capacity: 10)
a.user = supplier
a.title = 'Presting Karting'
a.category = 'Karting'
a.address = 'Route des Mayons'
a.city = 'Le Luc'
a.zip_code = '83340'
a.photo_url = 'http://res.cloudinary.com/dfoe2be36/image/upload/v1502869337/dxzxdnppuwlejd3nmfdm.jpg'
a.description = "UN ENVIRONNEMENT EXCEPTIONNEL

En Provence, en pleine nature, jouxtant le circuit automobile de F1, vous bénéficiez d'un ensoleillement exeptionnel (+ de 300 jours par an) et d'une température idéale (moyenne annuelle 21°).

Une situation de rêve au coeur de la Côte d'Azur, nous sommes à 30 km de Saint Tropez, 60 km de Cannes, 120 km de Monaco et 100 km de Nice.


UNE INFRASTRUCTURE HIGH - TECH


Chronométrage électronique et individuel tour après tour, éclairage de la piste pour les épreuves de nuit (courses de 24 heures), atelier de révision, magasin de pièces détachées, entretien, réparation, salle de direction de courses, salle de presse...

Tout est sur place à votre service."
a.save
Pricing.create(description: "Course de 30min", amount: 40, price_type: "par personne", activity_id: a.id)
Pricing.create(description: "Course de 1h", amount: 70, price_type: "par personne", activity_id: a.id)

# ACTIVITE--------------------------------------------------------------------
supplier = User.create(email: Faker::Internet.email, password: "123456", is_supplier: true)

a = Activity.new(is_outdoor: true, capacity: 10)
a.user = supplier
a.title = 'Parachute Paris'
a.category = 'Saut en parachute'
a.address = '11 Passage Desgrais'
a.city = 'Paris'
a.zip_code = '75019'
a.photo_url = 'http://res.cloudinary.com/dfoe2be36/image/upload/v1502871122/ws_Parachute_Jump_1440x900_arnhtu.jpg'
a.description = "15 minutes de briefing pour vous préparer au grand saut.
De 10 à 25 minutes de montée en avion, rivé à votre moniteur dans un parachute tandem.
Plogeon dans le ciel : une gigantesque chute libre à 200 km/h, sensations indescriptibles !
A 1500 mètres, ouverture du parachute, le silence des airs... De 5 à 12 minutes de vol, parachute ouvert."
a.save
Pricing.create(description: "Saut initiation tandem", amount: 40, price_type: "par personne", activity_id: a.id)
Pricing.create(description: "Saut pro", amount: 70, price_type: "par personne", activity_id: a.id)

# ACTIVITE--------------------------------------------------------------------
supplier = User.create(email: Faker::Internet.email, password: "123456", is_supplier: true)

a = Activity.new(is_outdoor: true, capacity: 10)
a.user = supplier
a.title = 'Kayak 3000'
a.category = 'Kayak'
a.address = 'Moulin de Douves, Route de Noisiel'
a.city = 'Torcy'
a.zip_code = '77200 '
a.photo_url = 'http://res.cloudinary.com/dfoe2be36/image/upload/v1502869785/kayak_uqknvx.jpg'
a.description = "Découverte des Gorges du Tarn, classées Grand Site de France
Une aventure accessible a tous : seul, en famille, ou entre amis !
Bivouacs inoubliables sous tente au bord du Tarn
Visite des différents villages le long de la rivière
Découverte du patrimoine local
Canoë de forme traditionnelle OLd Town
Maîtrise des techniques de navigation en canoë"
a.save
Pricing.create(description: "Saut initiation tandem", amount: 40, price_type: "par personne", activity_id: a.id)
Pricing.create(description: "Saut pro", amount: 70, price_type: "par personne", activity_id: a.id)
