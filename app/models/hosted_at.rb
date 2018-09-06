class HostedAt < ApplicationRecord
  belongs_to :guest
  belongs_to :occupied_room
  belongs_to :item
end
