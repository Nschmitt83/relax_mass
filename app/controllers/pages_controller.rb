class PagesController < ApplicationController
  def home
    respond_to do |format|
      format.html
      format.js { render 'pages/home' }
    end
  end
end
