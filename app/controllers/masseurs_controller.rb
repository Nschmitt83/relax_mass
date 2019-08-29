class MasseursController < ApplicationController
  def index
    @masseurs = User.where(mass_or_not: true)
    @reviews  = @masseurs.map(&:reviews)
    @massages = Massage.all

    if params["search"].present?
      @masseurs = User.where("city ILIKE ?", params["search"]["city"])
    else
      @masseurs = User.where(mass_or_not: true)
    end
  end

  def show
    @masseur = User.find(params[:id])
    @reviews = @masseur.reviews
    @booking = Booking.new
    @average = @reviews.sum(&:rating) / @reviews.size.to_f
  end
end
