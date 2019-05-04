class WelcomeController < ApplicationController
  layout "custom-layout"
  def index
    cookies[:curso] = "My cookie example"
    session[:session_example] = "My session example"
    @nome = params[:nome_param]
  end
end
