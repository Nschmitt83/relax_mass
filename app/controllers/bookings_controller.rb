class BookingsController < ApplicationController
  def new
    @params_to_transfer = {}
    @booking = Booking.new(booking_params)
    # unless @booking.start_date.nil?
      time = params[:time][0..-2].to_i
      @booking.start_date = @booking.start_date + time.hours
      @booking.massage = Massage.find_by(massage_type: params[:booking][:massage], user: User.find(params[:masseur_id]))
      @booking.user    = current_user
    # end
    # render 'masseurs/show'
  end

  def create
    @booking         = Booking.new(booking_params)
    @booking.user    = current_user
    @masseur         = User.find(params[:masseur_id])
    @massage         = @masseur.massages.find_by(massage_type: params[:booking][:massage])
    @booking.massage = @massage

    if @booking.save
      redirect_to profil_path(current_user)
    else
      render 'masseurs/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :masseur)
  end
end
