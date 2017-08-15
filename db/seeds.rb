# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# utilisateur du site
User.create(email: "vincent.feildel@gmail.com", password: "123456", is_supplier: false)

# fournisseur d'activité
User.create(email: "karting3000@gmail.com", password: "123456", is_supplier: true)

# Activité de Karting
Activity.create(title: "Karting Prestige", description: "Jean-Michel vous propose la course de votre vie", is_outdoor: true, category: "Karting", capacity: 8, user_id: 2, address: "Route des Mayons", zip_code: 83340, city: "Le Luc")

# Deux pricings associés:
Pricing.create(description: "Course de 30min", amount: 40, price_type: "par personne", activity_id: 1)
Pricing.create(description: "Course de 1h", amount: 70, price_type: "par personne", activity_id: 1)
