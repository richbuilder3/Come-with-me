class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.integer :traveler_id
    	t.integer :trip_id
    	t.text :description_text

      t.timestamps
    end
  end
end
