class CreateVisitedDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :visited_destinations do |t|
      t.integer :destination_id
    
    end
  end
end
