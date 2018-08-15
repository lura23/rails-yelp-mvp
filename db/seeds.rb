# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

restaurants_attributes = [
  {
    name: "Mamie's",
    address: 'Covent Garden, London',
    category: 'french',
    phone_number: '+44 207 836 7216'
  },
  {
    name: 'Sensi Tapas',
    address: 'Carrer Ample 26, Barcelona',
    category: 'spanish',
    phone_number: '+34 932 956 588'
  },
  {
    name: 'New Street Grill',
    address: 'New Street, London',
    category: 'french',
    phone_number: '+44 209 816 7216'
  },
  {
    name: 'Sushi Samba',
    address: 'London',
    category: 'japanese',
    phone_number: '+44 207 836 7216'
  },
  {
    name: 'Pizzetta',
    address: 'Lancaster University, Lancaster',
    category: 'italian',
    phone_number: '+44 173 806 4516'
  }
]

Restaurant.create(restaurants_attributes)

reviews_attributes = [
  {
    content: 'Fucking amazing!!!!',
    rating: 5,
    restaurant_id: 1
  },
  {
    content: 'Fucking amazing!!!!',
    rating: 5,
    restaurant_id: 2
  },
  {
    content: 'Really really good',
    rating: 5,
    restaurant_id: 1
  },
  {
    content: 'Very good tapas',
    rating: 4,
    restaurant_id: 2
  },
  {
    content: 'Very good',
    rating: 4,
    restaurant_id: 3
  },
  {
    content: 'Very good',
    rating: 4,
    restaurant_id: 4
  },
  {
    content: 'Great fillet',
    rating: 4,
    restaurant_id: 3
  },
  {
    content: 'The terrasse is amazing',
    rating: 5,
    restaurant_id: 4
  },
  {
    content: 'Very average',
    rating: 3,
    restaurant_id: 5
  },
  {
    content: 'Not great',
    rating: 2,
    restaurant_id: 5
  }
]

Review.create(reviews_attributes)
