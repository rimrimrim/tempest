class reservationsController < ApplicationController
  def create
    @reservation = current_user.reservations.create(reservation_params)

    redirect_to @reservation.listing, notice:"予約が完了しました"
  end

  private
  def reservation_params
    params.require(:reservation).permit(:staet_date :end_date, :price, :total_price, :listing_id)
  end

end
