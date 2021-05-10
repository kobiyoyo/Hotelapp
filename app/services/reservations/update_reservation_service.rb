module Reservations
  class CreateReservationService < ActiveInteraction::Base
    object :reservation, class: 'Reservation'
    integer :adults, :children, user_id, bedroom_id
    date :check_out, :check_in

    def to_model
      reservation
    end

    def execute
      reservation.adults = adults if adults.present?
      reservation.children = children if children.present?
      reservation.user_id = user_id if user_id.present?
      reservation.bedroom_id = bedroom_id if bedroom_id.present?
      reservation.check_in = check_in if check_in.present?
      reservation.check_out = check_out if check_out.present?
      errors.merge!(reservation.errors) unless reservation.save
      reservation
    end
  end
end
