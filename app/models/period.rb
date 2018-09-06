class Period < ApplicationRecord
	has_many :rates
    has_many :rooms, through: :rates	
end
