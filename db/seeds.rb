# Reinitialize DB-------------------------------------------------------------
Booking.all.each {|item| item.destroy} if Booking.all != nil
Pricing.all.each {|item| item.destroy} if Pricing.all != nil
Activity.all.each {|item| item.destroy} if Pricing.all != nil
User.all.each {|item| item.destroy} if Pricing.all != nil

# Create one user-------------------------------------------------------------

User.create(email: "vincent.feildel@gmail.com", password: "azerty", first_name: "Vincent", last_name:"Feildel")

# ACTIVITE--------------------------------------------------------------------
supplier = User.create(email: Faker::Internet.email, password: "123456", is_supplier: true)

a = Activity.new(is_outdoor: true, capacity: 10)
a.user = supplier
a.title = 'Presting Karting'
a.category = 'Kart'
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
a.category = 'Saut-en-Parachute'
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
Pricing.create(description: "Demi-journée, pique-nique inclus", amount: 50, price_type: "par personne", activity_id: a.id)
Pricing.create(description: "Deux jours complets avec bivouac le soir", amount: 70, price_type: "par personne", activity_id: a.id)

# ACTIVITE--------------------------------------------------------------------
supplier = User.create(email: Faker::Internet.email, password: "123456", is_supplier: true)

a = Activity.new(is_outdoor: true, capacity: 10)
a.user = supplier
a.title = 'Kayak entre broddies'
a.category = 'Kayak'
a.address = 'Rue des Deux Ponts'
a.city = 'Aixe-sur-Vienne'
a.zip_code = '87700'
a.photo_url = 'http://res.cloudinary.com/dfoe2be36/image/upload/v1502891666/alyssa-moore-304588_t14ms6.jpg'
a.description = "Découverte des Gorges du Tarn, classées Grand Site de France
Une aventure accessible a tous : seul, en famille, ou entre amis !
Bivouacs inoubliables sous tente au bord du Tarn
Visite des différents villages le long de la rivière
Découverte du patrimoine local
Canoë de forme traditionnelle OLd Town
Maîtrise des techniques de navigation en canoë"
a.save
Pricing.create(description: "Demi-journée, pique-nique inclus", amount: 40, price_type: "par personne", activity_id: a.id)
Pricing.create(description: "Deux jours complets avec bivouac le soir", amount: 70, price_type: "par personne", activity_id: a.id)

# ACTIVITE--------------------------------------------------------------------
supplier = User.create(email: Faker::Internet.email, password: "123456", is_supplier: true)

a = Activity.new(is_outdoor: true, capacity: 10)
a.user = supplier
a.title = 'XTREME Kayak'
a.category = 'Kayak'
a.address = 'Val Beynet'
a.city = 'Roche-le-Peyroux'
a.zip_code = '19160'
a.photo_url = 'http://res.cloudinary.com/dfoe2be36/image/upload/v1502891665/noah-basle-25979_cyx7bq.jpg'
a.description = "Découverte des Gorges du Tarn, classées Grand Site de France
Une aventure accessible a tous : seul, en famille, ou entre amis !
Bivouacs inoubliables sous tente au bord du Tarn
Visite des différents villages le long de la rivière
Découverte du patrimoine local
Canoë de forme traditionnelle OLd Town
Maîtrise des techniques de navigation en canoë"
a.save
Pricing.create(description: "Demi-journée, pique-nique inclus", amount: 60, price_type: "par personne", activity_id: a.id)
Pricing.create(description: "Deux jours complets avec bivouac le soir", amount: 70, price_type: "par personne", activity_id: a.id)
