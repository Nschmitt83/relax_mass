class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    respond_to do |format|
      format.html
      format.js { render 'pages/home' }
    end
  end
end
