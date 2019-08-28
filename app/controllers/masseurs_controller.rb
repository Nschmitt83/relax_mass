class MasseursController < ApplicationController
  def index
    @masseurs = User.where(mass_or_not: true)
    @reviews = @masseurs.map(&:reviews)
  end

  def show
    @masseur = User.find(params[:id])
    @reviews = @masseur.reviews
    @booking = Booking.new
    @average = @reviews.sum(&:rating) / @reviews.size.to_f
  end
end
