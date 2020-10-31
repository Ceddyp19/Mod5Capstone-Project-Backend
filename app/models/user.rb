class User < ApplicationRecord
  has_many :user_destinations
  has_many :destinations, through: :user_destinations


  has_secure_password

    validates :username, presence: true
    validates :username, uniqueness: true
    validates :email, presence: true
    validates :email, uniqueness: true

    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i


  #Auth0 code 
  # validates_presence_of :email
  # validates_uniqueness_of :email, case_sensitive: false
  # validates_format_of :email, with: /@/
  # # has_secure_password
  # before_save :downcase_email

  # def downcase_email
  #   self.email = self.email.delete(' ').downcase
  # end
end
