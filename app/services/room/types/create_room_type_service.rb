module Room
  class Types::CreateRoomTypeService < ActiveInteraction::Base
    string :name, :description
    float :price

    def to_model
      Room::Type.new
    end

    def execute
      room_type = Room::Type.new(
        name: name,
        description: description,
        price: price
      )
      errors.merge!(room_type.errors) unless room_type.save
      room_type
    end
  end
end
