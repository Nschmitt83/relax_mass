class MasseursController < ApplicationController
  def index
    @masseurs = User.where(mass_or_not: true)
  end

  def show
  end
end
