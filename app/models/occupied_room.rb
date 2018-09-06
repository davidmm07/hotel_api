class OccupiedRoom < ApplicationRecord
  belongs_to :room
  belongs_to :reservation
  has_many :hosted_ats
  has_many :items, through: :hosted_ats	
  has_many :guests, through: :hosted_ats  
end
