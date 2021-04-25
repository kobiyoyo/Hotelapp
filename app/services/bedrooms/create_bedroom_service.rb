module Bedrooms
    class CreateBedroomService < ActiveInteraction::Base
        integer :status,:quantity, :room_type_id
        def to_model
            Bedroom.new
        end

        def execute
            bedroom = Bedroom.new(
                status: status,
                quantity: quantity,
                room_type_id: room_type_id
            )
            errors.merge!(bedroom.errors) unless bedroom.save
            bedroom
        end
    end
  end
  