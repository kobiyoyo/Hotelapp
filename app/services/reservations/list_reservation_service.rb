module Reservations
  class ListReservationService < ActiveInteraction::Base
    def execute
      Reservation.all
    end
  end
end
