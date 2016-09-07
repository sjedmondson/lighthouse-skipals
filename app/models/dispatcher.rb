class Dispatcher < ApplicationRecord
  # has_secure_password
  has_many :alerts
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :username, presence: true
  validates :destination_id, presence: true
end
