class TrailTrip < ApplicationRecord
  belongs_to :trip
  belongs_to :trail
end 
