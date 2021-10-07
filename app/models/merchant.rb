class Merchant < ApplicationRecord
  belongs_to :client
  has_many :locations
end
