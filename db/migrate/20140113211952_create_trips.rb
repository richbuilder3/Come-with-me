class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|

    t.string :destination
    t.string :origin
    t.integer :length_of_stay
    t.boolean :accomplished

    t.integer :traveler_id

      t.timestamps
    end
  end
end
