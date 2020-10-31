class CreateMyPin < ActiveRecord::Migration[6.0]
  def change
    create_table :my_pins do |t|
      t.integer :user_id
      t.integer :destination_id
      t.boolean :isFavorite

      t.timestamps
    end
  end
end
