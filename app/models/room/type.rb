class Room::Type < ApplicationRecord
  self.table_name = 'room_types'

  has_many :bedrooms
end

# == Schema Information
#
# Table name: room_types
#
#  id           :integer          not null, primary key
#  name         :string           not null
#  description  :string           not null
#  price        :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
