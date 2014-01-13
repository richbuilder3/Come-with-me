class CreateTravelers < ActiveRecord::Migration
  def change
    create_table :travelers do |t|
    	t.string :name
    	t.integer :age
    	t.integer :estimated_cost


      t.timestamps
    end
  end
end
