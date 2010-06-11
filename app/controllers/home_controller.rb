class HomeController < ApplicationController

  def index
  end

  def show
    render :action => params[:page] and return
  end

end
