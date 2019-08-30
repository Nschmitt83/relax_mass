class ProfilsController < ApplicationController
  def show
    @user = User.find(params[:id])
    @last_booking = @user.bookings.last
    @masseur = @last_booking.massage.user
  end
end
