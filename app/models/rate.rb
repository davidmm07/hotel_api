class Rate < ApplicationRecord
  belongs_to :period
  belongs_to :room
end
