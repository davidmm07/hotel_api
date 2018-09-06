# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  next if table == 'schema_migrations'

  # MySQL and PostgreSQL
  ActiveRecord::Base.connection.execute("TRUNCATE #{table} RESTART IDENTITY CASCADE")

  # SQLite
  # ActiveRecord::Base.connection.execute("DELETE FROM #{table}")
end

rt1 = RoomType.create(level_room_type: 10, description: "Master Suite", max_capacity: 5)

# rt1_id = rt1.id
# p "room_type_id: ",rt1_id
# rt2 = RoomType.create(level_room_type: 7, description: "Double", max_capacity: 2)

Room.create(
	number_room: 710, 
	name_room: "Ipanema Suite",
	description: "The beach of Ipanema is known for its elegant development and its social life.",
	room_type_id: rt1.id)
Room.create(
	number_room: 708, 
	name_room: "7 Mile Beach Paradise", 
	description: "The western coastline contains the island's finest beaches.", 
	room_type_id: rt1.id)

p rt1.inspect
#p r1.inspect


