module Room
  class Types::ListRoomTypeService < ActiveInteraction::Base
    def execute
      Room::Type.all
    end
  end
end
