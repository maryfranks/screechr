class User < ApplicationRecord
  has_secure_password

  has_many :screeches

  validates :username, :length => { :maximum => 80 }, :allow_blank => false, :uniqueness => true, presence: true
  validates :first_name, :last_name, :length => { :maximum => 100 }, :allow_blank => false, presence: true
end
