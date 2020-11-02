class CreateCollages < ActiveRecord::Migration[6.0]
  def change
    create_table :collages do |t|
      t.string :photos
      t.string :story
      t.string :date
      t.integer :user_destination_id
    end
  end
end
