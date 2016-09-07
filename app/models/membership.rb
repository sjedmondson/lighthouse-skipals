class Membership < ApplicationRecord
  belongs_to :skier
  belongs_to :group
end
