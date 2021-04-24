module Room
  class Types::FindRoomTypeService < ActiveInteraction::Base
    integer :id

    def execute
      room_type = Room::Type.find_by_id(id)
      errors.add(:id, 'does not exist') unless room_type
      room_type
    end
  end
end
