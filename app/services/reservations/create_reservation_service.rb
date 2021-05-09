module Reservations
  class CreateReservationService < ActiveInteraction::Base
    integer :adults, :children, user_id, bedroom_id
    date :check_out, :check_in

    def to_model
      Reservation.new
    end

    def execute
      reservation = Reservation.new(
        adults: adults,
        children: children,
        user_id: current_user.id,
        bedroom_id: bedroom_id,
        check_in: check_in,
        check_out: check_out
      )
      errors.merge!(reservation.errors) unless reservation.save
      reservation
    end
  end
end
