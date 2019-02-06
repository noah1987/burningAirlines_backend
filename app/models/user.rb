# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  name            :string
#  admin           :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :text
#  email           :text
#

class User < ApplicationRecord
  has_many :reservations, dependent: :destroy
end
