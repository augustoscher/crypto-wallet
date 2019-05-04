class ApplicationController < ActionController::Base
  # todos os controllers, herdam de application controller.
    
  before_action :set_locale

  # executado sempre antes de qualquer ação dos controller:
  def set_locale
    if params[:locale]
      cookies[:locale] = params[:locale]
    end

    if cookies[:locale]
      if I18n.locale != cookies[:locale]
        I18n.locale = cookies[:locale]
      end
    end
  end
end
