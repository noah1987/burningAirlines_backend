# == Schema Information
#
# Table name: reservations
#
#  id         :bigint(8)        not null, primary key
#  user_id    :bigint(8)
#  flight_id  :bigint(8)
#  seat       :string
#  reserved   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reservation < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :flight, optional: true
end
