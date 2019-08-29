class MasseursController < ApplicationController
  def index
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

    if params["search"].present?
      sql_query = " \
      massage_type ILIKE :type \
      AND city ILIKE :city \
      "
      @masseurs = User.joins(:massages).where(sql_query,
                                              type: "%#{params["search"][:massage_type]}%",
                                              city: "%#{params["search"][:city]}%").uniq
    else
      @masseurs = User.where(mass_or_not: true)
    end
  end

  def show
    @masseur = User.find(params[:id])
    @reviews = @masseur.reviews
    @booking = Booking.new
  end
end
