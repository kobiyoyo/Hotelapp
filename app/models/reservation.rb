class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :bedroom
end
# == Schema Information
#
# Table name: reservations
#
#  id           :integer          not null, primary key
#  adults       :integer          not null
#  bedroom_id   :integer          not null
#  user_id      :integer          not null
#  children     :integer          not null
#  check_in     :datetime         not null
#  check_out    :datetime         not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
