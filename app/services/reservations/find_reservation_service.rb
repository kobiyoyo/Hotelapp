module Reservations
  class FindReservationService < ActiveInteraction::Base
    integer :id

    def execute
      reservation = Reservation.find_by_id(id)
      errors.add(:id, 'does not exist') unless reservation
      reservation
    end
  end
end
