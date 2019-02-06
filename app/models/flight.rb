# == Schema Information
#
# Table name: flights
#
#  id          :bigint(8)        not null, primary key
#  number      :string
#  origin      :string
#  destination :string
#  date        :date
#  airplane_id :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Flight < ApplicationRecord
  has_many :reservations, dependent: :destroy
  belongs_to :airplane, optional: true
end
