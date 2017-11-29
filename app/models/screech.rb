class Screech < ApplicationRecord
  belongs_to :user

  validates :content, :length => { :maximum => 1024 }, presence: true
end
