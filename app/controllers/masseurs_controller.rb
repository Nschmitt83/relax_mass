class MasseursController < ApplicationController
  def index

    if params["search"].present?
      @masseurs = User.where("city ILIKE ?", params["search"]["city"])
    else
      @masseurs = User.where(mass_or_not: true)
    end



    if params[:user].present?
      sql_query = " \
      massages.massage_type ILIKE :type \
      AND users.city ILIKE :city \
      AND users.gender ILIKE :gender \
      "
      @masseurs = User.joins(:massages).where(sql_query,
                                              type: "%#{params[:user][:first_name]}%",
                                              city: "%#{params[:user][:city]}%",
                                              gender: "%#{params[:user][:gender]}%").uniq
      @masseurs = @masseurs.select { |masseur| masseur.rating.to_i >= params[:user][:last_name].to_i } if params[:user][:last_name].present?
    else
      @masseurs = User.where(mass_or_not: true)
    end
    # @title_inject = "A #{params["city"].capitalize}"
    @reviews = @masseurs.map(&:reviews)
    @massage = Massage.new
    @user    = User.new
  end

  def show
    @masseur = User.find(params[:id])
    @reviews = @masseur.reviews
    @booking = Booking.new
    @average = @reviews.sum(&:rating) / @reviews.size.to_f
  end
end
