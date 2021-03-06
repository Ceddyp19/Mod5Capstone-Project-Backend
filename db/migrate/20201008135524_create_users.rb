# class CreateUsers < ActiveRecord::Migration[6.0]
#   def change
#     create_table :users do |t|
#       t.string :name        
#       t.string :email        
#       t.string :first_name
#       t.string :last_name
#       t.string :image
#       t.string :uid 
#       t.timestamps
#     end
#   end
# end
#Code above is for Auth0 code I was trying to get to work ran into complications though, so I'm using regular login for now


class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :password_digest
      t.string :email
    end
  end
end
