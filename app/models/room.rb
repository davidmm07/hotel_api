class Room < ApplicationRecord
	belongs_to :room_type
	# belongs_to :membership
	# has_many :rates
	# has_many :periods , through: :rates
end
