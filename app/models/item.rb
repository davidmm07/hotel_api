class Item < ApplicationRecord
  has_many :hosted_ats
  has_many :occupied_rooms, through: :hosted_ats	
  has_many :guests, through: :hosted_ats	
end
