class AddTravelerIdColumnToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :traveler_id, :integer
  end
end
