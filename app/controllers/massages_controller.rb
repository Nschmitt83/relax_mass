class MassagesController < ApplicationController
  def create
    @massage = Massage.new(massage_params)
    # @massage.save
  end

  private

  def massage_params
    params.require(:massage).permit(:massage_type)
  end
end
