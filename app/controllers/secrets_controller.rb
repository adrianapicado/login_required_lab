class SecretsController < ApplicationController
  def new
  end

  def show
    redirect_to root_path if !!session[:name] == false
  end
  
end
