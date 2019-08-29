class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @masseur = User.find(params[:masseur_id])
    @massage = @masseur.massages.where(massage_type: params[:booking][:massage])
    @booking.massage = @massage.first
    if @booking.save
      redirect_to masseur_path(@masseur)
    else
      @reviews = @masseur.reviews
      @average = @reviews.sum(&:rating) / @reviews.size.to_f
      render 'masseurs/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date)
  end


end
