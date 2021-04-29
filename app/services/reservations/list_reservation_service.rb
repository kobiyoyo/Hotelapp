module Reservation
  class ListReservationService < ActiveInteraction::Base
    def execute
      Reservation.all
    end
  end
end
