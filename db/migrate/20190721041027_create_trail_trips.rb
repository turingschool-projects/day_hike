class CreateTrailTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trail_trips do |t|
      t.references :trail, foreign_key: true
      t.references :trip, foreign_key: true
    end
  end
end
