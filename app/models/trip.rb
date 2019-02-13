class Trip < ApplicationRecord
  has_many :triptrails
  has_many :trails, through: :triptrails

  def total_hiking_distance
    trails.sum(:length)
  end

  def average_hiking_distance
    trails.average(:length)
  end

  def longest_hiking_distance
    trails.maximum(:length)
  end

  def trail_with_longest_hiking_distance
    trails.order('length DESC').limit(1)
  end
end
