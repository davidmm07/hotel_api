class Guest < ApplicationRecord
	belongs_to :membership
	has_many :hosted_ats
	has_many :occupied_rooms, through: :hosted_ats	
	has_many :items, through: :hosted_ats 		
end
