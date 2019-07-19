class CreateTrailTripsJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :trails, :trips

    create_join_table :trails, :users do |t|
      t.index :trail_id
      t.index :user_id
    end
  end
end
