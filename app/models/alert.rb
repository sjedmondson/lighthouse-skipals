class Alert < ApplicationRecord
  belongs_to :ping
  belongs_to :dispatcher
  belongs_to :patroller
  validates :state, presence: true#, inclusion: {in: ["active","inactive"]}
  validates :ping_id, presence: true
  validates :dispatcher_id, presence: true
end
