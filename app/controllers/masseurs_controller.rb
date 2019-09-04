class MasseursController < ApplicationController
  def index
    @params_to_transfer = {}
    if params[:user].present?
      @params_to_transfer = { massage_type: params[:user][:first_name] }
      refine
    elsif params[:search].present?
      @params_to_transfer = { massage_type: params[:search][:massage_type] }
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

    @bookings = @masseur.bookings
    @bookings_date = @bookings.map do |booking|
      { from: booking.start_date, to: booking.start_date + 59.minutes }
    end
  end

  private

  def availablity(masseur, date)
    hours = (9...17).to_a
    bookings_select = masseur.bookings.select { |booking| booking.start_date.to_date == date.to_date }
    bookings_hours = bookings_select.map { |b| b.start_date.hour }
    p bookings_hours
    availablity = hours.all? do |h|
      !bookings_hours.include?(h)
    end
    return availablity
  end

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
    @masseurs = @masseurs.select { |masseur| availablity(masseur, params[:user][:ZIP_code]) } if params[:user][:ZIP_code].present?
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
