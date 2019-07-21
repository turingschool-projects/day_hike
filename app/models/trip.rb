class Trip < ApplicationRecord

  has_many :trail_trips
  has_many :trails, through: :trail_trips

end
