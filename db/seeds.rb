# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "0149887564",
    category:     "chinese"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "0149547564",
    category:     "italian"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "0197887564",
    category:     "french"
  },
  {
    name:         "Woko",
    address:      "confluence Lyon",
    phone_number: "0469684564",
    category:     "japanese"
  },
  {
    name:         "Tire bouchon",
    address:      "Vieux lyon, Lyon",
    phone_number: "0692835477",
    category:     "french"
  }
]
Restaurant.create!(restaurants_attributes)