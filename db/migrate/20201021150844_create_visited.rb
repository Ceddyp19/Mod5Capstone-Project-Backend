class CreateVisited < ActiveRecord::Migration[6.0]
  def change
    create_table :visiteds do |t|
      t.integer :destination_id
      t.integer :user_id
      t.string :picture_url
      t.string :description
    
    end
  end
end
