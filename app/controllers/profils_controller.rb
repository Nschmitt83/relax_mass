class ProfilsController < ApplicationController
  def show
    @params_to_transfer = {}
    @user = User.find(params[:id])
    if @user.mass_or_not == false
      @last_booking = @user.bookings.last
      @masseur = @last_booking.massage.user
    else
      @bookings = @user.bookings
      @reviews = @bookings.map(&:reviews)
    end
  end

  def edit
    @massage = Massage.new
  end

  def update
    user = User.find(current_user.id)
    user.first_name = params[:user][:first_name]
    user.last_name = params[:user][:last_name]
    user.siret = params[:user][:siret]
    user.description = params[:user][:description]
    user.diploma = params[:user][:diploma]
    user.mass_or_not = true
    user.save

    params[:massages].each do |m|
      massage = Massage.new(massage_type: m, user: current_user)
      massage.save
    end

    redirect_to profil_path(current_user)
  end
end
