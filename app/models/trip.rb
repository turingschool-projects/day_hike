class Trip < ApplicationRecord
  validates_presence_of :name, :start_date, :end_date

  has_many :trail_trips
  has_many :trails, through: :trail_trips
end
