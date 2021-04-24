module Room
    class Types::DestroyRoomTypeService < ActiveInteraction::Base
        object :room_type,class: 'Room::Type'
        def execute
          room_type.destroy
        end
    end
end

