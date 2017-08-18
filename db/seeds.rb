# Reinitialize DB-------------------------------------------------------------
Booking.all.each {|item| item.destroy} if Booking.all != nil
Pricing.all.each {|item| item.destroy} if Pricing.all != nil
Activity.all.each {|item| item.destroy} if Pricing.all != nil
User.all.each {|item| item.destroy} if Pricing.all != nil

# Create one user-------------------------------------------------------------

User.create(email: "vincent.feildel@gmail.com", password: "azerty", first_name: "Vincent", last_name:"Feildel")
User.create(email: "titi@toto.com", password: "azerty", first_name: "Titi", last_name:"Toto")

# ACTIVITE--------------------------------------------------------------------
supplier = User.create(email: "supplier1@user.com", password: "123456", is_supplier: true)

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
supplier = User.create(email: "supplier2@user.com", password: "123456", is_supplier: true)

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
supplier = User.create(email: "supplier3@user.com", password: "123456", is_supplier: true)

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
Canoë de forme traditionnelle Old Town
Maîtrise des techniques de navigation en canoë"
a.save
Pricing.create(description: "Demi-journée, pique-nique inclus", amount: 50, price_type: "par personne", activity_id: a.id)
Pricing.create(description: "Deux jours complets avec bivouac le soir", amount: 70, price_type: "par personne", activity_id: a.id)

# ACTIVITE--------------------------------------------------------------------
supplier = User.create(email: "supplier4@user.com", password: "123456", is_supplier: true)

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
Canoë de forme traditionnelle Old Town
Maîtrise des techniques de navigation en canoë"
a.save
Pricing.create(description: "Demi-journée, pique-nique inclus", amount: 40, price_type: "par personne", activity_id: a.id)
Pricing.create(description: "Deux jours complets avec bivouac le soir", amount: 70, price_type: "par personne", activity_id: a.id)

# ACTIVITE--------------------------------------------------------------------

supplier = User.create(email: "supplier5@user.com", password: "123456", is_supplier: true)


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
Canoë de forme traditionnelle Old Town
Maîtrise des techniques de navigation en canoë"
a.save
Pricing.create(description: "Demi-journée, pique-nique inclus", amount: 60, price_type: "par personne", activity_id: a.id)
Pricing.create(description: "Deux jours complets avec bivouac le soir", amount: 70, price_type: "par personne", activity_id: a.id)
# ACTIVITE--------------------------------------------------------------------
supplier = User.create(email: "supplier6@user.com", password: "123456", is_supplier: true)

a = Activity.new(is_outdoor: true, capacity: 10)
a.user = supplier
a.title = 'RKC Kart'
a.category = 'Kart'
a.address = 'Aérodrome de Pontoise'
a.city = 'Cergy Pontoise'
a.zip_code = '95800'
a.photo_url = 'http://res.cloudinary.com/dfoe2be36/image/upload/v1502869337/dxzxdnppuwlejd3nmfdm.jpg'
a.description = "1 piste de karting de location de 1000 m.
Des nombreuses courses de kart loisir – des stages de pilotage karting et kart enfant – des sessions chronométrées sur des karts 2 temps et 4 temps. Situé à 25 minutes de Paris, au cœur de l’ile de France le complexe de karting est le plus grand centre de karting avec ses magnifiques pistes de kart Paris sur un complexe de 10 hectares au cœur du Vexin."
a.save
Pricing.create(description: "Course de 30min", amount: 240, price_type: "par personne", activity_id: a.id)
Pricing.create(description: "Course de 1h", amount: 70, price_type: "par personne", activity_id: a.id)
# ACTIVITE--------------------------------------------------------------------
supplier = User.create(email: "supplier7@user.com", password: "123456", is_supplier: true)

a = Activity.new(is_outdoor: false, capacity: 10)
a.user = supplier
a.title = 'Aero Kart'
a.category = 'Kart'
a.address = '199-203 route de Pontoise'
a.city = 'Argenteuil'
a.zip_code = '95100'
a.photo_url = 'http://res.cloudinary.com/dfoe2be36/image/upload/v1502869337/dxzxdnppuwlejd3nmfdm.jpg'
a.description = "Dernière grande piste indoor proche de Paris, venez découvrir un tracé karting exceptionnel alternant virages serrés, longues courbes et grandes lignes droites pour des sensations garanties ! Elle est homologuée par la FFSA.
"
a.save
Pricing.create(description: "Course de 30min", amount: 50, price_type: "par personne", activity_id: a.id)
Pricing.create(description: "Course de 1h", amount: 80, price_type: "par personne", activity_id: a.id)
# ACTIVITE--------------------------------------------------------------------
supplier = User.create(email: "supplier8@user.com", password: "123456", is_supplier: true)

a = Activity.new(is_outdoor: true, capacity: 10)
a.user = supplier
a.title = 'SMCD Kart'
a.category = 'Kart'
a.address = '934 Voie Aurélienne'
a.city = 'Grans'
a.zip_code = '13450'
a.photo_url = 'http://res.cloudinary.com/dfoe2be36/image/upload/v1503066948/racing-1675476_1920_odg2ff.jpg'
a.description = "Piste de Kart hallucinante, pour du fun et du crousti. Une machine à souvenir garantie, surtout si vous avez la chance de récupérer une carapasse bleue et que vous évitez les peaux de bananes déposées par vos amis"
a.save
Pricing.create(description: "Course de 30min", amount: 50, price_type: "par personne", activity_id: a.id)
Pricing.create(description: "Course de 1h", amount: 80, price_type: "par personne", activity_id: a.id)
# ACTIVITE--------------------------------------------------------------------
supplier = User.create(email: "supplier9@user.com", password: "123456", is_supplier: true)

a = Activity.new(is_outdoor: true, capacity: 10)
a.user = supplier
a.title = 'Royal Raceway'
a.category = 'Kart'
a.address = 'Disneyland Paris
'
a.city = 'Marne-la-Vallée
'
a.zip_code = '77777'
a.photo_url = 'http://res.cloudinary.com/dfoe2be36/image/upload/v1503066871/helmet-1444417_1920_azkagm.jpg'
a.description = "Ne jamais faire confiance à Peach, c'est une petite filoute. Ne jamais sous estimer Toad, c'est un champignon. Bowser le dinosaure est un patron, c'est à coup sure lui qui va gagner. Même si à tout moment Mario peut venir se glisser en embuscade. Du fun et des bananes à gogo, voilà ce qui vous attend."
a.save
Pricing.create(description: "Course de 30min", amount: 50, price_type: "par personne", activity_id: a.id)
Pricing.create(description: "Course de 1h", amount: 80, price_type: "par personne", activity_id: a.id)
# ACTIVITE--------------------------------------------------------------------
supplier = User.create(email: "supplier10@user.com", password: "123456", is_supplier: true)

a = Activity.new(is_outdoor: true, capacity: 10)
a.user = supplier
a.title = 'Varech Kayak '
a.category = 'Kayak'
a.address = '70 Rue de Bois Bas
'
a.city = 'Baden
'
a.zip_code = '56870'
a.photo_url = 'http://res.cloudinary.com/dfoe2be36/image/upload/v1503066740/kayaking-1149886_1920_yjtdnv.jpg'
a.description = "La Bretagne ça vous gagne. Après une orgie de crèpe, une visite chez les Korigans et les chapeaux ronds, rien de mieux qu'une petite balade en Kayak. Bromance, Brolove et tutti quanti à l'horizon."
a.save
Pricing.create(description: "Demi-journée", amount: 50, price_type: "par personne", activity_id: a.id)
Pricing.create(description: "Journée", amount: 80, price_type: "par personne", activity_id: a.id)
# ACTIVITE--------------------------------------------------------------------
supplier = User.create(email: "supplier11@user.com", password: "123456", is_supplier: true)

a = Activity.new(is_outdoor: true, capacity: 10)
a.user = supplier
a.title = 'Canoe Land '
a.category = 'Kayak'
a.address = '235 Route de linxe
'
a.city = 'Saint-Michel-Escalus
'
a.zip_code = '40550'
a.photo_url = 'http://res.cloudinary.com/dfoe2be36/image/upload/v1503066665/adventure-1836601_1920_egeu2l.jpg'
a.description = "Venez visitez les Landes en Kayak, la nuit est belle, elle est sauvage. Ramer c'est la vie, docn venez chez nous, vous aurez de quoi vous éclater. Jacquie vous acceuilera à bras ouverts pour vous faire passer un moment inoubliable."
a.save
Pricing.create(description: "Demi-journée", amount: 50, price_type: "par personne", activity_id: a.id)
Pricing.create(description: "Journée", amount: 80, price_type: "par personne", activity_id: a.id)

# ACTIVITE KARTING--------------------------------------------------------------------
supplier = User.create(email: "supplier13@user.com", password: "123456", is_supplier: true)

a = Activity.new(is_outdoor: true, capacity: 10)
a.user = supplier
a.title = 'Aerokart'
a.category = 'Kart'
a.address = '58, boulevard Vauban'
a.city = 'Lille'
a.zip_code = '59000'
a.photo_url = 'http://res.cloudinary.com/dfoe2be36/image/upload/v1503066472/karting-flo_zxjcm4.jpg'
a.description = "Le centre de karting de Lille est en intérieur, ce qui vous permettra de vous amusez au volant d'un kart même en plein hiver !
Grâce à une équipe aux petits soins, vous prendrez du plaisir en toute sécurité.
Vous prouverez vos talents de pilote grâce aux karts 4 temps de grande qualité, sur une piste intérieure de 400 mètres parfaitement entretenue.
Que vous soyez grand pilote ou débutant, cette piste de Karting saura satisfaire et vous procurer des sensations extrêmes !

L'activité est également accessible aux enfants de 7 à 14 ans (1m20 minimum)."
a.save
Pricing.create(description: "Demi-journée, pique-nique inclus", amount: 45, price_type: "par personne", activity_id: a.id)
Pricing.create(description: "Deux jours complets avec bivouac le soir", amount: 90, price_type: "par personne", activity_id: a.id)

# ACTIVITE RANDO (IMAGE A CHANGER)--------------------------------------------------------------------
supplier = User.create(email: "supplier14@user.com", password: "123456", is_supplier: true)

a = Activity.new(is_outdoor: true, capacity: 10)
a.user = supplier
a.title = 'Les calanques du soleil'
a.category = 'Randonnée'
a.address = '38 route de la Sablière'
a.city = 'Marseille'
a.zip_code = '13000'
a.photo_url = 'http://res.cloudinary.com/dfoe2be36/image/upload/v1503066865/patrick-schneider-227160_mprpfz.jpg'
a.description = "De Marseille à Cassis, les calanques – du provençal calenco, escarpé – se découpent en Méditerranée, véritables failles de calcaire sur le bleu éblouissant de la mer. Un site qui demande à être protégé face aux 2 millions de visiteurs annuels, si bien que les calanques viennent d'être classées Parc National : respect de l'environnement obligatoire, sous peine d'amende. Allez-y de préférence hors saison.

Ces 28 balades sont à pratiquer avec de bonnes chaussures de marche et une protection contre le soleil ou le vent. Ne vous contentez pas d’une simple tenue de bain. Les cailloux roulent et sont dangereux. Le soleil tape. Prévoyez de l’eau potable et ne laissez aucune ordure derrière vous.

Itinéraires

- Commencez par découvrir le belvédère de Saint-Michel (246 m) en famille (4,5 km) au-dessus de Luminy, près de Marseille. Il vous donnera une approche du paysage sur la calanque de Morgiou et ses cabanons.

- Vous vous enfoncerez dans la calanque de Sugiton (7 km) et son rocher du Torpilleur. Depuis la colline de Lun (3,5 km), la calanque de Sormiou apparaît derrières les lentisques et les térébinthes.

- Le tour du massif de Marseilleveyre (12 km) est réservé aux sportifs, récompensés par des panoramas à couper le souffle.

- La balade de Callelongue (9 km) longe sa calanque et celles de la Mounine et de Marseilleveyre.

- L’intérieur montagnard du mont Puget, du belvédère d’En-Vau et des falaises du Devenson attirent les varappeurs de haut niveau.

- Plus près de Cassis, explorez les très belles calanques d’En-Vau, de Port-Pin et de Port-Miou, avant de prendre un pastis mérité à Cassis, à l’ombre du cap Canaille (394 m)."
a.save
Pricing.create(description: "Demi-journée, pique-nique inclus", amount: 45, price_type: "par personne", activity_id: a.id)
Pricing.create(description: "Deux jours complets avec bivouac le soir", amount: 90, price_type: "par personne", activity_id: a.id)

# ACTIVITE RANDO--------------------------------------------------------------------
supplier = User.create(email: "supplier15@user.com", password: "123456", is_supplier: true)

a = Activity.new(is_outdoor: true, capacity: 10)
a.user = supplier
a.title = 'Pyrénées occidentales'
a.category = 'Randonnée'
a.address = '32, Rue de Viele'
a.city = 'Pau'
a.zip_code = '64000'
a.photo_url = 'http://res.cloudinary.com/dfoe2be36/image/upload/v1503066472/squirrel-nager-cute-nature-158452_s9sbdj.jpg'
a.description = "Une courte traversée (67 km) par le GR® 8 de Urt à Sare, et les collines basques qui environnent la Rhune, met en condition. Déjà, les maisons blanches à colombages, aux volets verts ou rouges, sont omniprésentes.

Le GR® 10 commence à Hendaye, au bord de l’océan à qui vous tournez bientôt le dos. Cols et ventas mènent par Aïnhoa, Bidarray, Saint-Étienne-de-Baïgorry et Saint-Jean-Pied-de-Port, en montant et descendant. Petits chevaux Pottoks, têtes noires des brebis Manech : vous traversez le pays de Ramuntcho en Labourd, puis la Basse-Navarre.

Saluons le sentier de Compostelle qui s’apprête à franchir les Pyrénées et continuons vers la Soule et la sauvage forêt d’Iraty. Sous le passage des palombes, les crêtes se font plus hautes à Larau, les crevasses deviennent canyons à Kakouetta et Holçarté.

Apprenez à différencier les cayolars ou cabanes de bergers basques, des cujalas béarnais, en pénétrant sur les terres d’Henri IV, en vallée de Barétous. Le karst d’Arette-la-Pierre-Saint-Martin, célèbre pour ses explorations spéléologiques, est unique en Europe.

Un paysage lunaire qui conduit au pic d’Anie, porte du parc national des Pyrénées. Vallée d’Aspe et lacs d’Ayous, vallée d’Ossau et lacs de Soussouéou et d’Anglas, l’isard et le gypaète barbu vous observent… de loin et saluent votre entrée sur les premiers cols bigourdans, jusqu’à Arrens."
a.save
Pricing.create(description: "Demi-journée, pique-nique inclus", amount: 45, price_type: "par personne", activity_id: a.id)
Pricing.create(description: "Deux jours complets avec bivouac le soir", amount: 90, price_type: "par personne", activity_id: a.id)

