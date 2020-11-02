class UserDestination < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  has_many :collages
end
