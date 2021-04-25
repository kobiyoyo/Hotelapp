class Bedroom < ApplicationRecord
  belongs_to :room_type,
  foreign_key: 'room_type_id',
  class_name: 'Room::Type'
end


# == Schema Information
#
# Table name: bedrooms
#
#  id           :integer          not null, primary key
#  status       :integer          not null
#  room_type_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null