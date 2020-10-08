class User < ApplicationRecord
    has_many :favorites
    has_many :destinations, through: :favorites 
end
