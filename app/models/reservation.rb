class Reservation < ApplicationRecord
  belongs_to :guest
  has_many :occupied_rooms
  has_many :rooms, through: :occupied_rooms	
end
