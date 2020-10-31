class CreateCollages < ActiveRecord::Migration[6.0]
  def change
    create_table :collages do |t|
      t.string :pics
      t.string :story
      t.string :date
      t.integer :visited_destination_id
    end
  end
end
