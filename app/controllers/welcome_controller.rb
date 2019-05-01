class WelcomeController < ApplicationController
  layout "adm"
  def index
    @nome = params[:nome_param]
  end
end
