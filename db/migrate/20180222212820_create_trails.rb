class CreateTrails < ActiveRecord::Migration[5.1]
  def change
    create_table :trails do |t|
      t.integer :length
      t.string :name
      t.string :address
    end
  end
end
