module Room
    class Types::UpdateRoomTypeService < ActiveInteraction::Base
        object :room_type,class: 'Room::Type'
        string :name, :description
        float :price

        def to_model
            room_type
        end

        def execute
            room_type.name = name if name.present?
            room_type.description = description if description.present?
            room_type.price = price if price.present?
            errors.merge!(room_type.errors) unless room_type.save
            room_type
        end



    end
end

