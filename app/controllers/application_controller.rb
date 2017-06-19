class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include Cmsino::ControllerHelpers

  before_action :set_locale

  def set_locale
    if params[:locale] and Cmsino::Conf.instance.locales.include?(params[:locale].to_s)
      session[:locale] = params[:locale]
    end

    I18n.locale = session[:locale] || I18n.default_locale || 'it'
  end
end
