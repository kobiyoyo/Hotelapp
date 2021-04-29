module Bedrooms
  class UpdateBedroomService < ActiveInteraction::Base
    object :bedroom, class: 'Bedroom'
    integer :status, :quantity, :room_type_id, :room_code

    def to_model
      bedroom
    end

    def execute
      bedroom.status = status if status.present?
      bedroom.quantity = quantity if quantity.present?
      bedroom.room_code = room_code if room_code.present?
      bedroom.room_type_id = room_type_id if room_type_id.present?
      errors.merge!(bedroom.errors) unless bedroom.save
      bedroom
    end
  end
end
