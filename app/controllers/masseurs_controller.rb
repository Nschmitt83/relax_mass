class MasseursController < ApplicationController
  def index
    if params[:user].present?
      refine
    elsif params[:search].present?
      home_search
    else
      @masseurs = User.where(mass_or_not: true)
    end
    @reviews = @masseurs.map(&:reviews)
    @massage = Massage.new
    @user    = User.new
  end

  def show
    @masseur = User.find(params[:id])
    @reviews = @masseur.reviews
    @booking = Booking.new
    @price = MASSAGE_PRICE_AND_TYPE["Massage Suedois"][:price]

  end

  private

  def refine
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
    @massage_type = params[:user][:first_name]
    @city = params[:user][:city]
  end

  def home_search
    sql_query = " \
      massage_type ILIKE :type \
      AND city ILIKE :city \
    "
    @masseurs = User.joins(:massages).where(sql_query,
                                            type: "%#{params[:search][:massage_type]}%",
                                            city: "%#{params[:search][:city]}%").uniq
    @massage_type = params[:search][:massage_type]
    @city = params[:search][:city].capitalize
  end
end
