class Flight < ApplicationRecord
  has_many :reservations, dependent: :destroy
  belongs_to :airplane, optional: true
end
