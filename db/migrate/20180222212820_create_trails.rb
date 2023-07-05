class CreateTrails < ActiveRecord::Migration[7.0]
  def change
    create_table :trails do |t|
      t.integer :length
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
