class ReservationsController < ApplicationController

  def index
    @reservations = Reservations::ListReservationService.run!
  end

  def show
    @reservation = find_reservation!
  end

  def new
    @reservation = Reservations::CreateReservationService.new
  end

  def edit
    @reservation = find_reservation!
  end

  def create
    result = Reservations::CreateReservationService.run(reservation_params)

    if result.valid?
      redirect_to @reservation, notice: "Reservation was successfully created."      
    else
      @reservation = result
      render :new
    end
  end

  def update
    @reservation = find_reservation!
    result = Reservations::UpdateReservationService.run(reservation_params.merge(reservation: @reservation))
    if result.valid?
      redirect_to @reservation, notice: "Reservation was successfully updated." 
    else
      @reservation = result
      render :edit
    end
  end

  def destroy
    Reservations::DestroyReservationService.run!(reservation: find_reservation!)
    redirect_to reservations_url, notice: "Reservation was successfully destroyed."
  end

  private

    def reservation_params
      params.require(:reservation).permit(:user_id, :bedroom_id, :check_in, :check_out, :adults, :children)
    end

    def find_reservation!
      reservation = FindReservationService.run(params)
      raise ActiveRecord::RecordNotFound, reservation.errors.full_messages.to_sentence unless reservation.valid?
      reservation.result
    end
end
