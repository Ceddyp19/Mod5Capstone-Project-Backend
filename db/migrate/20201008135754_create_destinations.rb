class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :lng
      t.string :lat
      t.string :image
      t.string :addr

      t.timestamps
    end
  end
end




