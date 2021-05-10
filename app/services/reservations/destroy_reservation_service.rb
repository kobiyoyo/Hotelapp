module Reservations
    class DestroyReservationService < ActiveInteraction::Base
        object :reservation, class 'Reservation'

        def execute
          reservation.destroy
        end
    end
end