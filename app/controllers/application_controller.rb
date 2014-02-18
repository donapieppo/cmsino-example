class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include CmsinoHelper

  before_filter :set_locale

  def set_locale
    locale = 'it'
    if params[:locale] and Cmsino::Conf.instance.locales.include?(params[:locale].to_s)
     locale = params[:locale]
    end

    I18n.locale = locale || I18n.default_locale
  end
end
