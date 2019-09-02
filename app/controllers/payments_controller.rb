class PaymentsController < ApplicationController
# before_action :set_booking

  def create
    @booking = Booking.new

    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,
      amount:       params["price"],
      description:  "Paiement de votre massage #{params[:massage_type]} du #{params[:start_date]}",
      currency:     "EUR"
    )
    redirect_to profil_path(current_user), notice: "Le paiement a bien été enregistré. Merci pour votre confiance !"
    # redirect_to masseur_bookings_path(params[:masseur_id]), notice: "Le paiement a bien été enregistré. Merci pour votre confiance !"
  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_booking_payment_path(@booking)
  end
end
