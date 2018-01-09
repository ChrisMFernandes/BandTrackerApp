# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Band.create(name: "A Day to Remember", genre: "Metal", explicit_lyrics: true)
Venue.create(name: "Madison Square Garden", city: "New York", state: "NY", family_friendly: true)
Venue.create(name: "Barclays Center", city: "New York", state: "NY", family_friendly: true)
Venue.create(name: "Shoreline Amphitheatre", city: "Mountain View", state: "CA", family_friendly: true)
Event.create(date: "2018/02/20", band_id: 1, venue_id: 1)